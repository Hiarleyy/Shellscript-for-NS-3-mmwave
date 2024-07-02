#!/bin/bash

#Diretório de Destino
dir_destino="dataframe"

#verifica se a pasta de destino existe
if [ ! -d $dir_destino ]; then
    mkdir $dir_destino
fi

#copia e cola os arquivos para a pasta de destino   
echo "Copiando Arquivos para $dir_destino"

# Move files to destination directory
mv EnbHandoverStartStats.txt $dir_destino
mv EnbSchedAllocTraces.txt $dir_destino
mv CellIdStats.txt $dir_destino
mv CellIdStatsHandover.txt $dir_destino
mv DlPdcpStats.txt $dir_destino
mv DlPhyTransmissionTrace.txt $dir_destino
mv DlRlcStats.txt $dir_destino
mv EnbHandoverEndStats.txt $dir_destino
mv MmWaveSinrTime.txt $dir_destino
mv MmWaveSwitchStats.txt $dir_destino
mv RxPacketTrace.txt $dir_destino
mv UeHandoverEndStats.txt $dir_destino
mv UeHandoverStartStats.txt $dir_destino
mv UlPdcpStats.txt $dir_destino
mv UlRlcStats.txt $dir_destino

# Verifica se os arquivos foram movidos com sucesso
if [ $? -eq 0 ]; then
    echo "Arquivos movidos com sucesso!"
else
    echo "Erro ao mover os arquivos"
fi