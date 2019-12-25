
OPENOCD = riscv-openocd-riscv
BUILD = build

all: extract
	cd $(OPENOCD); ./bootstrap
	-rm -rf $(BUILD) 
	mkdir -p $(BUILD)
	cd $(BUILD); ../$(OPENOCD)/configure

extract:
	tar zxvf ./dl/$(OPENOCD).tar.gz
	tar -C ./$(OPENOCD)/jimtcl --strip-components=1 -zxvf ./dl/jimtcl-master.tar.gz

clean:
	-rm -rf $(OPENOCD)
	-rm -rf $(BUILD)
