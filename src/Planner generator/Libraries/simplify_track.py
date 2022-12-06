import numpy as np
import matplotlib.pyplot as plt
from Libraries.utm import utmconv
from Libraries.dir_manipulator import DirectoryManipulator
import rdp
from Libraries.exportkml import kmlclass

class TrackSimplifier(DirectoryManipulator):
    def __init__(self, filename, foldername):
        DirectoryManipulator.__init__(self)
        self.selectFile(filename)
        self.selectFolder(foldername)
        self.runAllFiles()

    def resetAllMembers(self):
        self.latitude = []
        self.longitude = []
        self.altitude = []
        self.northing = []
        self.easting = []
        self.hemisphere = []
        self.UTM = []
        self.zone = []
        self.zlet = []

    def simplifyTrack(self, epsilon):
        dim = np.array([self.easting, self.northing, self.altitude]).transpose()
        return rdp.rdp(dim, epsilon = epsilon)

    def runAllFiles(self):
        self.splitFileName()
        self.resetAllMembers()
        self.runSimplification()


    def runSimplification(self):
        self.extractLatLonAlt()
        self.convertIntoUTMCoordinates()
        self.simplifyUTM()
        self.plotUTM()
        self.exportToKML()
        self.exportData()

    def simplifyUTM(self):
        self.UTM = self.simplifyTrack(0.5)
        self.easting, self.northing, self.altitude = self.UTM.transpose()

    def plotUTM(self):
        title = 'UTM Flight data'
        xlabel = 'Easting [m]'
        ylabel = 'Northing [m]'
        self.selectOutputFolder()
        self.plotData(
            self.easting, 
            self.northing, 
            plt.plot, 
            title,
            xlabel,
            ylabel,
            'Plots of simplified track',
            self.filename + " simplified" + '.png')

    def Export(self):
        return np.savetxt('Simplified_' + self.filename + self.file_extension, self.UTM, delimiter=',')


    def exportData(self):
        self.selectOutputFolder()
        self.createAndGoToFolder("Simplified track data")
        if self.file_extension == '.txt':
            self.createAndGoToFolder("txt data files")
            self.Export()
        elif self.file_extension == '.csv':
            self.createAndGoToFolder("csv data files")
            self.Export()
        else:
            return 0
        return 0
        
        

    def convertIntoUTMCoordinates(self):
        for i in range(len(self.latitude)):
            self.createListOfUTMCoords(i)
        self.easting = np.array(self.easting)
        self.northing = np.array(self.northing)

    def exportToKML(self):
        data_name = self.filename + "_KML"
        title = 'KML for the drone\'s flight path'
        KML_foldername = 'kml_files'
        kml = kmlclass()
        self.createAndGoToFolder(KML_foldername)
        kml.begin(data_name + '.kml', title, 'FLight path generated in KML file', 0.7)
        # color: red,green,blue,cyan,yellow,grey,red_poly,yellow_poly,green_poly
        # altitude: use 'absolute' or 'relativeToGround'
        kml.trksegbegin ('', '', 'cyan', 'absolute') 
        for i in range(len(self.easting)):
            kml.pt(self.easting[i], self.northing[i], self.altitude[i])
        kml.trksegend()
        kml.end()

    def createListOfUTMCoords(self, i):
        hemisphere, zone, zlet, easting, northing = utmconv().geodetic_to_utm(self.latitude[i], self.longitude[i])
        self.hemisphere.append(hemisphere)
        self.zone.append(zone)
        self.zlet.append(zlet)
        self.easting.append(easting)
        self.northing.append(northing)

    def extractLatLonAlt(self):
        try:
            data = self.readFile()
            self.latitude = data[:, 0]
            self.longitude = data[:, 1]
            if data.shape[1] == 3:
                self.altitude = data[:, 2]
            else:
                [self.altitude.append(50) for i in range(len(self.latitude))]
        except:
            print('Error in extracting data: ' + self.file_name + self.file_extension)
        finally:
            return 0

    def readFile(self, filename = None, file_extension = None):
        try:
            if filename is None or file_extension is None:
                data = self.autoReadFile()
            else:
                data = self.manualReadFile(filename, file_extension)
        except:
            print('Error in reading file: ' + filename+file_extension)
            return 1
        finally:
            return data

# Deprecated
#    def manualReadFile(self, file, file_extension):
#        file = file + file_extension
#        data = np.loadtxt(file, delimiter=',')
#        return data

    def autoReadFile(self):
        self.selectInputFolder()
        file = self.filename + self.file_extension
        return np.loadtxt(file, delimiter=',')

    def plotData(self, x, y, plottype, title, xlabel, ylabel, foldername, outputfile):
        try:
           plottype(x, y)
           plt.title(title)
           plt.xlabel(xlabel)
           plt.ylabel(ylabel)
           self.createFolder(foldername)
           plt.savefig(foldername+ '/' + outputfile)
           plt.close()
        except Exception as e:
           return e
        finally:
           return 0

if __name__ == '__main__':
    # Load the data
    data_names = ['positions.csv']
    foldername = 'Data/Raw data'
    TrackSimplifier(data_names, foldername)
