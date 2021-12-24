# 2020.12.14
# 进行日降水、气温的后处理；将此前的结果使用cdo插值到和CN05.1相同的经纬度网格上
# precip
# path_in=/raid61/LS4P-TPEMIP/TEMP_DATA/precip
# path_out=/raid61/LS4P-TPEMIP/TEMP_DATA/precip_regrid
# t2m
path_in=/raid61/LS4P-TPEMIP/TEMP_DATA/t2m
path_out=/raid61/LS4P-TPEMIP/TEMP_DATA/t2m_regrid

start=`date +%s`

mkdir -p $path_out
# for IFILE in `ls ${path_in}/*.nc`
for IFILE in `ls ${path_in}/NJU_Output-E_*.nc`

do

echo "-----dealing $IFILE-----"
cdo -L -P 8 remapbil,grid_info_cn051 $IFILE $path_out/`basename ${IFILE}`

done

end=`date +%s`
runtime=$((end-start))
echo "running time:" + $runtime
