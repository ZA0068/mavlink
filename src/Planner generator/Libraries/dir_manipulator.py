import os

class DirectoryManipulator:
    def __init__(self):
        self.filedata = ''
        self.main_folder = ''
        self.foldername = ''
        self.input_data_dir = 'Data/Raw data'
        self.local_input_dir = ''
        self.output_data_dir = 'Data/Processed data'
    
    def setLocalInputDir(self, path):
        self.local_input_dir = path
    
    def selectFolder(self, foldername):
        self.foldername = foldername
    
    def gotoDirectory(self, foldername=''):
        if self.main_folder == '':
            os.chdir(self.foldername)
        else:
            os.chdir(foldername)
    
    def createFolder(self, path):
        if not os.path.exists(path):
            os.makedirs(path)

    def setMainFolder(self, path):
        self.main_folder = path

    def selectFile(self, file):
        if type(file) is str:
            self.filedata = file
        else:
            self.filedata = str(file)

    def getExtensionSubFolder(self):
        if self.file_extension == '.csv':
            return 'csv data files'
        elif self.file_extension == '.txt':
            return 'txt data files'
        else:
            raise Exception('File extension not supported')
        
    def createAndGoToFolder(self, path):
        path_strings = ''
        cnt = 0
        max_cnt = len(path)
        for strings in path:
            path_strings += strings
            cnt += 1
            if strings == '/' or cnt == max_cnt:
                self.createFolder(path_strings)
                os.chdir(path_strings)
                path_strings = ''
                
    
    def splitFileName(self):
        self.filename, self.file_extension = os.path.splitext(self.filedata)            

    def selectOutputFolder(self):
        os.chdir(os.path.join(self.foldername, self.output_data_dir))

    def selectMainFolder(self):
        os.chdir(self.main_folder)

    def selectInputFolder(self):
        os.chdir(os.path.join(self.foldername, self.input_data_dir))