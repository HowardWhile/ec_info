# Readme

## 快速使用

```shell
# 記得啟動ethercat master
# ec-start.sh
sudo /etc/init.d/ethercat start
```

```bash
./ec_info.sh
```



## 檔案說明

1. `ec_slave_info.txt`:
   - EtherCAT master 版本信息。
   
   - EtherCAT slave 的詳細信息。
   
     
   
2. `ec_slave_info.xml`:
   - 設備端的xml訊息
   
     
   
2. `ec_sdos.txt`:
   
   - EtherCAT SDO  的詳細信息。
   
     
   
3. `ec_pdos.txt`:
   - EtherCAT PDO  的詳細信息與產生對應的C語言結構。
   
     
   
4. `ec_graph.png`:
   - 使用 `ethercat graph` 命令生成 EtherCAT 網絡拓撲的圖形表示。
   - 將該圖形轉換為 PNG 格式，並將輸出保存到 `ec_graph.png` 檔案中。
