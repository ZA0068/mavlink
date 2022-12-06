import sys
from Libraries.fixed_wing_optimization import *
from Libraries.simplify_track import *
from Libraries.qgc_generate_plan import *
from Libraries.dir_manipulator import *

class FlightPathGenerator(DirectoryManipulator):
    def __init__(self, list_of_data):
        DirectoryManipulator.__init__(self)
        self.setMainFolder(os.path.dirname(os.path.realpath(__file__)))
        self.selectMainFolder()
        self.createAndGoToFolder('Data/Processed data')
        self.selectFile(list_of_data)
        self.home_positions = [0.0, 0.0, 0.0]
    
    def simplifyTrack(self):
        TrackSimplifier(self.filedata, self.main_folder)

    def setHomePosition(self, latitute = 0.0, longitude = 0.0, altitude = 0.0):
        self.home_positions = [latitute, longitude, altitude]

    def export2QGroundControl(self):
        Export2QGC(self.filedata, self.main_folder, self.home_positions)

    def optimizeFlightPath4FixedWingedAircrafts(self):
        FixedWingOptimization(self.filedata, self.main_folder)

def main():
    if len(sys.argv) == 1:
        flightpath = FlightPathGenerator('positions.csv')
        flightpath.setHomePosition(0.0, 0.0, 0.0) # Set home position
    else:
        flightpath = FlightPathGenerator(sys.argv[1])
        flightpath.setHomePosition(input("Homepos Latitude "), input("Homepos Longitude "), input("Homepos Altitude "))
    flightpath.simplifyTrack()
    flightpath.export2QGroundControl()
    flightpath.optimizeFlightPath4FixedWingedAircrafts()

if __name__ == "__main__":
    main()