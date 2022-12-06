from Libraries.hermite import cubic_hermite_spline
from Libraries.dir_manipulator import *
import numpy as np
import matplotlib.pyplot as plt


class FixedWingOptimization(DirectoryManipulator):
    def __init__(self, filename, foldername):
        DirectoryManipulator.__init__(self)
        self.selectFolder(foldername)
        self.selectFile(filename)
        self.splitFileName()
        self.setLocalInputDir('Simplified track data')
        self.resetAllParameters()
        self.calculateFixedWingOptimizedPath()

    def resetAllParameters(self):
        self.easting = []
        self.northing = []
        self.altitude = []
        self.chs = []
        self.steps = []

    def plotData(self):
        try:
            outputfile = 'Fixed wing route plan for ' + self.filename + '.png'
            plt.plot(self.rteT[0], self.rteT[1])
            plt.title('Route for Fixed Wing Aircrafts')
            plt.xlabel('Easting [m]')
            plt.ylabel('Northing [m]')
            self.createAndGoToFolder('Fixed wing track plots')
            plt.savefig(outputfile)
            plt.close()
        except Exception as e:
            return e
        finally:
            return 0

    def calculateFixedWingOptimizedPath(self):
        self.extractData()
        self.optimizeFlightpath4FixedWing()
        self.plotData()
        self.exportFixedWingData()

    def exportFixedWingData(self):
        self.selectOutputFolder()
        self.createAndGoToFolder('Fixed_wing_optimization_txt_files')
        np.savetxt("fixed_wing_routes_UTM.txt",
                   self.rteT, delimiter=',')

    def extractData(self):
        self.selectOutputFolder()
        extension_subfolder = self.getExtensionSubFolder()
        file = os.path.join(self.local_input_dir, extension_subfolder,
                            'Simplified_' + self.filename + self.file_extension)
        data = np.loadtxt(file, delimiter=',')
        self.easting = data[:, 0]
        self.northing = data[:, 1]
        self.altitude = data[:, 2]
        self.chs = cubic_hermite_spline()
        self.steps = 100

    def optimizeFlightpath4FixedWing(self):
        rteT = []
        for i in range(len(self.easting)-1):
            p1 = [self.easting[i], self.northing[i]]
            p2 = [self.easting[i+1], self.northing[i+1]]
            t1 = [0.0, 5.0]
            t2 = [0.0, 5.0]
            rte = self.chs.goto_wpt(p1, t1, p2, t2, self.steps)
            rteT += list(zip(*rte))
        temp1 = []
        temp2 = []
        for i in range(int(len(rteT)/2)):
            temp1 += rteT[i*2]
            temp2 += rteT[i*2+1]
        self.rteT = np.array([temp1, temp2])
