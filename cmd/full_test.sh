rm -rf *.log fastdb_data iavl_data mpt_data
echo 3 > /proc/sys/vm/drop_caches
go run main.go --typ=mpt --initNumber=1000000 >> test_mpt_100w.log
go run main.go --typ=iavl --initNumber=1000000 >> test_iavl_100w.log
go run main.go --typ=fastdb --initNumber=1000000 >> test_fastdb_100w.log
zip -r 100w.zip *.log fastdb_data iavl_data mpt_data




rm -rf *.log fastdb_data iavl_data mpt_data
echo 3 > /proc/sys/vm/drop_caches
go run main.go --typ=mpt --initNumber=10000000 >> test_mpt_1000w.log
go run main.go --typ=iavl --initNumber=10000000 >> test_iavl_1000w.log
go run main.go --typ=fastdb --initNumber=10000000 >> test_fastdb_1000w.log
zip -r 1000w.zip *.log fastdb_data iavl_data mpt_data

