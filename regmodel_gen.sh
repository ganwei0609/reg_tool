./excel2ral ${1}.xlsx ${2} -cfg cfg2.cfg
sed -i "/block ${2} {/a    bytes 4;" ${2}.ralf
ralgen -full64  -l sv -t ${2} ${2}.ralf -uvm


#./excel2ral {$1}_reg_map.xlsx {$1}_reg_map -cfg cfg2.cfg
#
#sed -i "/block ${1}_reg_map {/a    bytes 100;" ${1}_reg_map.ralf
#
#ralgen -l sv -t {$1}_reg_map {$1}_reg_map.ralf -uvm
