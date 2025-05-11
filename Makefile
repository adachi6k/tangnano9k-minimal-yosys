TOP       := top
DEVICE    := GW1NR-LV9QN88C6/I5
PACK_DEV  := GW1N-9C
FREQ      := 27

all: ${TOP}.fs

${TOP}.json: ${TOP}.sv
	yosys -p 'read_verilog -sv ${TOP}.sv; synth_gowin -top ${TOP} -json ${TOP}.json'

${TOP}_routed.json: ${TOP}.json ${TOP}.cst
	nextpnr-himbaechel \
	  --json ${TOP}.json \
	  --write ${TOP}_routed.json \
	  --device ${DEVICE} \
	  --freq ${FREQ} \
	  --vopt family=${PACK_DEV} \
	  --vopt cst=${TOP}.cst

${TOP}.fs: ${TOP}_routed.json
	gowin_pack -d ${PACK_DEV} -o ${TOP}.fs ${TOP}_routed.json

prog: ${TOP}.fs
	openFPGALoader -b tangnano9k ${TOP}.fs

clean:
	rm -f ${TOP}.json ${TOP}_routed.json ${TOP}.fs
