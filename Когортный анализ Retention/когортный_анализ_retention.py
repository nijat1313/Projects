import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sb

df = pd.read_csv('/content/clients.csv')
df['created_at'] = pd.to_datetime(df['created_at'])
df['first_dt'] = df.groupby('extra_leads')['created_at'].transform('min')
df['first_ym'] = df['first_dt'].dt.strftime('%Y-%m')
df['ym'] = df['created_at'].dt.strftime('%Y-%m')

cohorts = pd.pivot_table(
    df,
    index='first_ym',
    columns='ym',
    values='extra_leads',
    aggfunc='nunique'
).fillna(0).astype(int)

diags = np.diag(cohorts)
cohorts = cohorts.div(diags, axis=0)
cohorts

x, y = plt.subplots(figsize=(15, 7))
sb.heatmap(
    cohorts,
    annot=True,
    fmt='.0%',
    cmap='RdYlGn'
)

y.xaxis.set_label_position('top');
y.xaxis.tick_top()
plt.xticks(rotation=45, ha='left');
