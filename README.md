# Analysis for mult-RCMs in LS4P-TPEMIP

## 2021.12.24

交差给老板的多模式降水气温检查，绘图主要使用proplot进行，使用环境放在 condaenvs_proplot1006.bak* 之中，
泰勒图需单独控制skillmetrics要素，地图需下载环资所shpefiles文件，具体在ipynb脚本中

包含：
- 多模式的后处理部分 preprocess
    模式输出的遗漏在脚本中有说明

- 降水和气温检查：
    - 包含空间平均、年际统计量 spatial_pre+t2m
    - 空间泰勒图诸要素 taylor_pre+t2m
    - 季节循环序列时间序列 timeseries_pre+t2m

还有待继续细分区域分析
