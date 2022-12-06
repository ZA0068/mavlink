import json
import numpy as np
from Libraries.utm import utmconv
from Libraries.dir_manipulator import *

class Export2QGC(DirectoryManipulator):

    def __init__(self, filenames, foldername, homepos):
        DirectoryManipulator.__init__(self)
        self.utmconverter = utmconv()
        self.selectFolder(foldername)
        self.selectFile(filenames)
        self.setLocalInputDir('Simplified track data')
        self.splitFileName()
        self.GenerateQGCPlan(homepos)

    def resetAllMembers(self):
        self.plan = {}
        self.geoFence = {}
        self.items = []
        self.item = {}
        self.mission = {}
        self.rallyPoints = {}
        self.easting = []
        self.northing = []
        self.altitude = []
        
    def setPlan(self, plan = 'Plan', version = 1):
        self.plan['fileType'] = plan;
        self.plan['groundStation'] = 'QGroundControl'
        self.plan['version'] = version

    def setGeoFence(self, version = 1):
        self.geoFence['polygon'] = [] 
        self.geoFence['version'] = version 
        self.plan['geoFence'] = self.geoFence

    def setParams(self, lat, lon, alt):
        self.params = [0,0,0,0,lon,lat,alt]


    def addItems(self, autoContinue, command, doJumpId, frame, type):
        self.item = {}
        self.item['autoContinue'] = autoContinue
        self.item['command'] = command
        self.item['doJumpId'] = doJumpId
        self.item['params'] = self.params
        self.item['frame'] = frame
        self.item['type'] = type
        self.items.append (self.item)
        

    def setMission(self, cruiseSpeed, hoverSpeed, plannedHomePosition, vehicleType = 2, firmwareType = 3, version = 2):
        self.mission['cruiseSpeed'] = cruiseSpeed
        self.mission['firmwareType'] = firmwareType
        self.mission['hoverSpeed'] = hoverSpeed
        self.mission['items'] = self.items
        self.mission['plannedHomePosition'] = plannedHomePosition
        self.mission['vehicleType'] = vehicleType
        self.mission['version'] = version
        self.plan['mission'] = self.mission

    def setRallyPoints(self):
        self.rallyPoints['points'] = []
        self.rallyPoints['version'] = 1
        self.plan['rallyPoints'] = self.rallyPoints

    def setPlanJson(self, indent: int = 4, sort_keys: bool = True):
        self.planJson = json.dumps(self.plan, indent=indent, sort_keys=sort_keys)

    def writeJson(self, name: str = "Planroute_", indent: int = 4, sort_keys: bool = True):
        self.setPlanJson(indent, sort_keys)
        QGC_foldername = 'QGC plan files'
        self.createAndGoToFolder(QGC_foldername)
        with open(name + self.filename + '.plan','w') as file:
            file.write(self.planJson)
        file.close()

    def GenerateQGCPlan(self, homepos):
        self.resetAllMembers()
        self.convertDataToPlanFiles(homepos)

    def convertDataToPlanFiles(self, homepos):
        self.setPlan('Plan', 1)
        self.setGeoFence()
        self.extractData()
        self.fillItems()
        self.setMission(15, 5, homepos)
        self.setRallyPoints()
        self.writeJson()

    def fillItems(self):
        for i in range(len(self.easting)):
            lon, lat = self.utmconverter.utm_to_geodetic('N', 40, self.easting[i], self.northing[i])
            self.setParams(lon, lat, self.altitude[i])
            if i == 0:
                self.addItems(True, 22, 1, 3, 'SimpleItem')
            else:
                self.addItems(True, 16, i+1, 3, 'SimpleItem')

    def extractData(self):
        self.selectOutputFolder()
        extension_subfolder = self.getExtensionSubFolder()
        file = os.path.join(self.local_input_dir, extension_subfolder, 'Simplified_'+ self.filename + self.file_extension)
        data = np.loadtxt(file, delimiter=',')
        self.easting = data[:,0]
        self.northing = data[:,1]
        if data.shape[1] == 3:
            self.altitude = data[:,2]
        else:
            self.altitude = np.zeros(data[:,0].size)
        return 0
            
# Main file for testing purposes

def main():
    filenames = ['txt_data_files/new_valid_data1.txt', 'txt_data_files/new_valid_data2.txt']
    home_positions = [[55.4713271,10.32561629,50], [55.4713271,10.32561629,50]]
    Export2QGC(filenames, home_positions)


if __name__ == '__main__':
    main()