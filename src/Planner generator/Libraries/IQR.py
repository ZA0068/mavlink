import pandas as pd 
import numpy as np

def IQROutlierReject(data):
    pos_data_df = pd.DataFrame(data)
    pos_data_df.columns = ['latitude', 'longitude', 'altitude'] 
    pos_data_df.head()
    Q1 = pos_data_df.quantile(0.25)
    Q3 = pos_data_df.quantile(0.75)
    IQR = Q3 - Q1
    pos_data_df_out = pos_data_df[~((pos_data_df < (Q1 - 1.5 * IQR)) |(pos_data_df > (Q3 + 1.5 * IQR))).any(axis=1)]
    pos_data_df_out.shape
    return np.array(pos_data_df_out)