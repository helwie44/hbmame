-- license:BSD-3-Clause
-- copyright-holders:Robbbert
---------------------------------------------------------------------------
--
--   hbmame.lua
--
--   HBMAME target makefile
--
---------------------------------------------------------------------------

--------------------------------------------------
-- specify available CPU cores
---------------------------------------------------

CPUS["ADSP21XX"] = true
CPUS["ADSP21062"] = true -- model2
CPUS["ARM"] = true
CPUS["ARM7"] = true
CPUS["CCPU"] = true
CPUS["DSP16A"] = true
CPUS["ES5510"] = true
CPUS["H6280"] = true
CPUS["HD6309"] = true
CPUS["I8085"] = true
CPUS["I8089"] = true
CPUS["I86"] = true
CPUS["I960"] = true -- model2
CPUS["M6502"] = true
CPUS["M6800"] = true
CPUS["M6805"] = true
CPUS["M6809"] = true
CPUS["M680X0"] = true
CPUS["MB88XX"] = true
CPUS["MB86233"] = true -- model2
CPUS["MB86235"] = true -- model2
CPUS["MCS48"] = true
CPUS["MCS51"] = true
CPUS["MN10200"] = true
CPUS["NEC"] = true
CPUS["PSX"] = true
CPUS["S2650"] = true
CPUS["SH"] = true
CPUS["SSP1601"] = true
CPUS["TLCS90"] = true
CPUS["TMS32010"] = true
CPUS["TMS32031"] = true
CPUS["TMS340X0"] = true
CPUS["PIC16C5X"] = true
CPUS["UPD7725"] = true  -- segas32
CPUS["UPD7810"] = true
CPUS["V60"] = true  -- segas32
CPUS["V810"] = true
CPUS["Z180"] = true
CPUS["Z80"] = true

--------------------------------------------------
-- specify available sound cores
--------------------------------------------------

SOUNDS["ASTROCADE"] = true
SOUNDS["AY8910"] = true
SOUNDS["BEEP"] = true
SOUNDS["CDDA"] = true
SOUNDS["DAC"] = true
SOUNDS["DMADAC"] = true
SOUNDS["DIGITALKER"] = true
SOUNDS["DISCRETE"] = true
SOUNDS["ES5505"] = true
SOUNDS["ESQPUMP"] = true
SOUNDS["HC55516"] = true
SOUNDS["ICS2115"] = true
SOUNDS["K005289"] = true
SOUNDS["K007232"] = true
SOUNDS["K051649"] = true
SOUNDS["K053260"] = true
SOUNDS["K054539"] = true
SOUNDS["MPEG_AUDIO"] = true -- model2
SOUNDS["MSM5205"] = true
SOUNDS["MULTIPCM"] = true -- model2
SOUNDS["NAMCO_15XX"] = true
SOUNDS["NAMCO_52XX"] = true
SOUNDS["NES_APU"] = true
SOUNDS["OKIM6295"] = true
SOUNDS["POKEY"] = true
SOUNDS["QSOUND"] = true
SOUNDS["RF5C68"] = true
SOUNDS["SAMPLES"] = true
SOUNDS["SCSP"] = true -- model2
SOUNDS["SEGAPCM"] = true
SOUNDS["SN76477"] = true
SOUNDS["SN76496"] = true
SOUNDS["SP0250"] = true
SOUNDS["SPEAKER"] = true
SOUNDS["SPU"] = true -- zn
SOUNDS["ST0016"] = true
SOUNDS["TC8830F"] = true -- timeplt
SOUNDS["TMS36XX"] = true
SOUNDS["TMS5110"] = true
SOUNDS["TMS5220"] = true
SOUNDS["UPD7759"] = true
SOUNDS["VLM5030"] = true
SOUNDS["VOLT_REG"] = true
SOUNDS["VOTRAX"] = true
SOUNDS["YM2151"] = true
SOUNDS["YM2203"] = true
SOUNDS["YM2413"] = true
SOUNDS["YM2608"] = true
SOUNDS["YM2610"] = true
SOUNDS["YM2612"] = true
SOUNDS["YM3812"] = true
SOUNDS["YM3526"] = true
SOUNDS["YMF262"] = true
SOUNDS["YMF271"] = true -- zn
SOUNDS["YMF278B"] = true
SOUNDS["YMZ280B"] = true
SOUNDS["YMZ770"] = true -- cv1k
SOUNDS["ZSG2"] = true -- zn

--------------------------------------------------
-- specify available video cores
--------------------------------------------------

VIDEOS["BUFSPRITE"] = true
VIDEOS["EPIC12"] = true -- cv1k
VIDEOS["HD63484"] = true
VIDEOS["MC6845"] = true
VIDEOS["SEGA315_5124"] = true
VIDEOS["SEGA315_5313"] = true
VIDEOS["TLC34076"] = true
VIDEOS["TMS34061"] = true
VIDEOS["PSX"] = true

--------------------------------------------------
-- specify available machine cores
--------------------------------------------------

MACHINES["6522VIA"] = true
MACHINES["6821PIA"] = true
MACHINES["68681"] = true
MACHINES["7200FIFO"] = true
MACHINES["AAKARTDEV"] = true
MACHINES["ADC0808"] = true
MACHINES["ADC0844"] = true
MACHINES["AT28C16"] = true -- zn
MACHINES["BANKDEV"] = true
MACHINES["CXD1095"] = true
MACHINES["EEPROMDEV"] = true
MACHINES["ER2055"] = true
MACHINES["FDC_PLL"] = true
MACHINES["I2CMEM"] = true
MACHINES["I8243"] = true
MACHINES["I8251"] = true
MACHINES["I8255"] = true
MACHINES["IDE"] = true
MACHINES["INPUT_MERGER"] = true
MACHINES["INTELFLASH"] = true
MACHINES["GEN_FIFO"] = true
MACHINES["GEN_LATCH"] = true
MACHINES["I8257"] = true
MACHINES["K053252"] = true
MACHINES["LATCH8"] = true
MACHINES["LDPR8210"] = true
MACHINES["MB3773"] = true
MACHINES["MB8421"] = true
MACHINES["MB14241"] = true
MACHINES["MB87078"] = true
MACHINES["MB89352"] = true  -- segas32
MACHINES["MIOT6530"] = true
MACHINES["MSM6253"] = true
MACHINES["NETLIST"] = true
MACHINES["RIOT6532"] = true
MACHINES["RP5C01"] = true
MACHINES["RP5H01"] = true
MACHINES["RTC9701"] = true -- cv1k
MACHINES["SERFLASH"] = true -- cv1k
MACHINES["TE7750"] = true
MACHINES["TICKET"] = true
MACHINES["TIMEKPR"] = true
MACHINES["TMS1024"] = true -- docastle
MACHINES["TMS6100"] = true
MACHINES["TTL74153"] = true
MACHINES["TTL74157"] = true
MACHINES["TTL74259"] = true
MACHINES["UPD1990A"] = true
MACHINES["UPD4701"] = true
MACHINES["UPD4992"] = true
MACHINES["V3021"] = true
MACHINES["WATCHDOG"] = true
MACHINES["WD33C93"] = true
MACHINES["WD_FDC"] = true
MACHINES["Z80CTC"] = true
MACHINES["Z80DART"] = true
MACHINES["Z80PIO"] = true

--------------------------------------------------
-- specify available bus cores
--------------------------------------------------

BUSES["GENERIC"] = true
-- BUSES["NEOGEO"] = true
-- BUSES["NEOGEO_CTRL"] = true
BUSES["SCSI"] = true

--------------------------------------------------
-- this is the list of driver libraries that
-- comprise MAME plus hbmame.lst which contains
-- the list of drivers
--------------------------------------------------

function linkProjects_hbmame_hbmame(_target, _subtarget)
	links {
		"acorn",
		"atari",
		"atlus",
		"capcom",
		"cave",
		"cinemat",
		"dataeast",
		"exidy",
		"fuuki",
		"gottlieb",
		"igs",
		"irem",
		"itech",
		"jaleco",
		"kaneko",
		"konami",
		"midway",
		"namco",
		"neogeo",
		"nichibut",
		"nintendo",
		"nmk",
		"pacman",
		"phoenix",
		"psikyo",
		"sega",
		"seibu",
		"seta",
		"snk",
		"sony",
		"taito",
		"tehkan",
		"toaplan",
		"univers",
		"valadon",
--		"shared",
		"misc",
	}
end

function createHBMAMEProjects(_target, _subtarget, _name)
	project (_name)
	targetsubdir(_target .."_" .. _subtarget)
	kind (LIBTYPE)
	uuid (os.uuid("drv-" .. _target .."_" .. _subtarget .. "_" .._name))
--	addprojectflags() -- no idea if this is needed, seems to work fine without it
	precompiledheaders()

	includedirs {
		MAME_DIR .. "src/osd",
		MAME_DIR .. "src/emu",
		MAME_DIR .. "src/devices",
		MAME_DIR .. "src/hbmame/includes",
		MAME_DIR .. "src/hbmame",
		MAME_DIR .. "src/mame",
		MAME_DIR .. "src/lib",
		MAME_DIR .. "src/lib/util",
		MAME_DIR .. "src/lib/netlist",
		MAME_DIR .. "3rdparty",
		MAME_DIR .. "3rdparty/zlib",
		GEN_DIR  .. "mame/layout",
		GEN_DIR  .. "hbmame/layout",
	}
	includedirs {
		ext_includedir("flac"),
	}
end

function createProjects_hbmame_hbmame(_target, _subtarget)
--------------------------------------------------
-- the following files are general components and
-- shared across a number of drivers
--------------------------------------------------

--createHBMAMEProjects(_target, _subtarget, "shared")
--files {
--	MAME_DIR .. "src/devices/machine/ticket.cpp",
--}

--------------------------------------------------
-- manufacturer-specific groupings for drivers
--------------------------------------------------

createHBMAMEProjects(_target, _subtarget, "acorn")
files {
	MAME_DIR .. "src/hbmame/drivers/ertictac.cpp",
	MAME_DIR .. "src/mame/machine/archimds.cpp",
	MAME_DIR .. "src/mame/video/archimds.cpp",
}

createHBMAMEProjects(_target, _subtarget, "atari")
files {
	MAME_DIR .. "src/hbmame/drivers/asteroid.cpp",
	MAME_DIR .. "src/mame/machine/asteroid.cpp",
	MAME_DIR .. "src/hbmame/drivers/atarisy1.cpp",
	MAME_DIR .. "src/mame/video/atarisy1.cpp",
	MAME_DIR .. "src/mame/audio/asteroid.cpp",
	MAME_DIR .. "src/hbmame/drivers/bwidow.cpp",
	MAME_DIR .. "src/mame/audio/bwidow.cpp",
	MAME_DIR .. "src/hbmame/drivers/cball.cpp",
	MAME_DIR .. "src/hbmame/drivers/centiped.cpp",
	MAME_DIR .. "src/mame/video/centiped.cpp",
	MAME_DIR .. "src/hbmame/drivers/gauntlet.cpp",
	MAME_DIR .. "src/mame/video/gauntlet.cpp",
	MAME_DIR .. "src/hbmame/drivers/tempest.cpp",
	MAME_DIR .. "src/mame/machine/atari_vg.cpp",
	MAME_DIR .. "src/mame/machine/atarigen.cpp",
	MAME_DIR .. "src/mame/machine/mathbox.cpp",
	MAME_DIR .. "src/mame/machine/slapstic.cpp",
	MAME_DIR .. "src/mame/audio/llander.cpp",
	MAME_DIR .. "src/mame/video/atarimo.cpp",
	MAME_DIR .. "src/mame/video/avgdvg.cpp",
}

createHBMAMEProjects(_target, _subtarget, "atlus")
files {
	MAME_DIR .. "src/hbmame/drivers/powerins.cpp",
	MAME_DIR .. "src/mame/video/powerins.cpp",
}

createHBMAMEProjects(_target, _subtarget, "capcom")
files {
	MAME_DIR .. "src/hbmame/drivers/sf.cpp",
	MAME_DIR .. "src/mame/video/sf.cpp",
	MAME_DIR .. "src/hbmame/drivers/1942.cpp",
	MAME_DIR .. "src/mame/video/1942.cpp",
	MAME_DIR .. "src/hbmame/drivers/blktiger.cpp",
	MAME_DIR .. "src/mame/video/blktiger.cpp",
	MAME_DIR .. "src/hbmame/drivers/commando.cpp",
	MAME_DIR .. "src/mame/video/commando.cpp",
	MAME_DIR .. "src/hbmame/drivers/cps1.cpp",
	MAME_DIR .. "src/hbmame/video/cps1.cpp",
	MAME_DIR .. "src/hbmame/drivers/cps2.cpp",
	MAME_DIR .. "src/hbmame/video/cps2.cpp",
	MAME_DIR .. "src/hbmame/drivers/cps3.cpp",
	MAME_DIR .. "src/mame/audio/cps3.cpp",
	MAME_DIR .. "src/hbmame/drivers/fcrash.cpp",
	MAME_DIR .. "src/hbmame/drivers/mitchell.cpp",
	MAME_DIR .. "src/mame/video/mitchell.cpp",
	MAME_DIR .. "src/mame/machine/kabuki.cpp",
}

createHBMAMEProjects(_target, _subtarget, "cave")
files {
	MAME_DIR .. "src/hbmame/drivers/cave.cpp",
	MAME_DIR .. "src/mame/video/cave.cpp",
	MAME_DIR .. "src/hbmame/drivers/cv1k.cpp",
}

createHBMAMEProjects(_target, _subtarget, "cinemat")
files {
	MAME_DIR .. "src/hbmame/drivers/cinemat.cpp",
	MAME_DIR .. "src/mame/audio/cinemat.cpp",
	MAME_DIR .. "src/mame/video/cinemat.cpp",
}

createHBMAMEProjects(_target, _subtarget, "dataeast")
files {
	MAME_DIR .. "src/hbmame/drivers/astrof.cpp",
	MAME_DIR .. "src/mame/audio/astrof.cpp",
	MAME_DIR .. "src/hbmame/drivers/btime.cpp",
	MAME_DIR .. "src/mame/machine/btime.cpp",
	MAME_DIR .. "src/mame/video/btime.cpp",
	MAME_DIR .. "src/hbmame/drivers/cninja.cpp",
	MAME_DIR .. "src/mame/video/cninja.cpp",
	MAME_DIR .. "src/hbmame/drivers/dec0.cpp",
	MAME_DIR .. "src/mame/machine/dec0.cpp",
	MAME_DIR .. "src/mame/video/dec0.cpp",
	MAME_DIR .. "src/mame/machine/deco222.cpp",
	MAME_DIR .. "src/mame/machine/decocpu7.cpp",
	MAME_DIR .. "src/hbmame/drivers/pcktgal.cpp",
	MAME_DIR .. "src/mame/video/pcktgal.cpp",
	MAME_DIR .. "src/mame/video/decbac06.cpp",
	MAME_DIR .. "src/mame/video/decmxc06.cpp",
	MAME_DIR .. "src/mame/video/deco16ic.cpp", -- cninja
	MAME_DIR .. "src/mame/machine/deco104.cpp",  -- cninja
	MAME_DIR .. "src/mame/machine/deco146.cpp", -- cninja
	MAME_DIR .. "src/mame/video/decospr.cpp",  -- cninja
	MAME_DIR .. "src/mame/machine/deco_irq.cpp",  -- cninja
	MAME_DIR .. "src/mame/machine/decocrpt.cpp",  -- cninja
}

createHBMAMEProjects(_target, _subtarget, "exidy")
files {
	MAME_DIR .. "src/hbmame/drivers/exidy.cpp",
	MAME_DIR .. "src/mame/audio/exidy.cpp",
	MAME_DIR .. "src/mame/video/exidy.cpp",
	MAME_DIR .. "src/mame/audio/targ.cpp",
}

createHBMAMEProjects(_target, _subtarget, "fuuki")
files {
	MAME_DIR .. "src/hbmame/drivers/fuukifg3.cpp",
	MAME_DIR .. "src/mame/video/fuukifg3.cpp",
	MAME_DIR .. "src/mame/video/fuukifg.cpp",
}

createHBMAMEProjects(_target, _subtarget, "gottlieb")
files {
	MAME_DIR .. "src/hbmame/drivers/gottlieb.cpp",
	MAME_DIR .. "src/mame/audio/gottlieb.cpp",
	MAME_DIR .. "src/mame/video/gottlieb.cpp",
}

createHBMAMEProjects(_target, _subtarget, "igs")
files {
	MAME_DIR .. "src/hbmame/drivers/igs011.cpp",
	MAME_DIR .. "src/hbmame/drivers/pgm.cpp",
	MAME_DIR .. "src/mame/video/pgm.cpp",
	MAME_DIR .. "src/mame/machine/pgmprot_igs027a_type1.cpp",
	MAME_DIR .. "src/mame/machine/pgmprot_igs027a_type2.cpp",
	MAME_DIR .. "src/mame/machine/pgmprot_igs027a_type3.cpp",
	MAME_DIR .. "src/mame/machine/pgmprot_igs025_igs012.cpp",
	MAME_DIR .. "src/mame/machine/pgmprot_igs025_igs022.cpp",
	MAME_DIR .. "src/mame/machine/pgmprot_igs025_igs028.cpp",
	MAME_DIR .. "src/mame/machine/pgmprot_orlegend.cpp",
	MAME_DIR .. "src/mame/machine/pgmcrypt.cpp",
	MAME_DIR .. "src/mame/machine/igs025.cpp",
	MAME_DIR .. "src/mame/machine/igs022.cpp",
	MAME_DIR .. "src/mame/machine/igs028.cpp",
}

createHBMAMEProjects(_target, _subtarget, "irem")
files {
	MAME_DIR .. "src/hbmame/drivers/m52.cpp",
	MAME_DIR .. "src/mame/video/m52.cpp",
	MAME_DIR .. "src/mame/machine/irem_cpu.cpp",
	MAME_DIR .. "src/mame/audio/nl_kidniki.cpp",
	MAME_DIR .. "src/mame/audio/irem.cpp",
}

createHBMAMEProjects(_target, _subtarget, "itech")
files {
	MAME_DIR .. "src/hbmame/drivers/itech8.cpp",
	MAME_DIR .. "src/mame/machine/itech8.cpp",
	MAME_DIR .. "src/mame/video/itech8.cpp",
}

createHBMAMEProjects(_target, _subtarget, "jaleco")
files {
	MAME_DIR .. "src/hbmame/drivers/exerion.cpp",
	MAME_DIR .. "src/mame/video/exerion.cpp",
}

createHBMAMEProjects(_target, _subtarget, "kaneko")
files {
	MAME_DIR .. "src/hbmame/drivers/kaneko16.cpp",
	MAME_DIR .. "src/mame/video/kaneko16.cpp",
	MAME_DIR .. "src/mame/video/kaneko_tmap.cpp",
	MAME_DIR .. "src/mame/video/kaneko_spr.cpp",
	MAME_DIR .. "src/mame/machine/kaneko_hit.cpp",
	MAME_DIR .. "src/mame/machine/kaneko_calc3.cpp",
	MAME_DIR .. "src/mame/machine/kaneko_toybox.cpp",
	MAME_DIR .. "src/mame/video/kan_pand.cpp",  -- this needed for linux compile
}

createHBMAMEProjects(_target, _subtarget, "konami")
files {
	MAME_DIR .. "src/hbmame/drivers/contra.cpp",
	MAME_DIR .. "src/mame/video/contra.cpp",
	MAME_DIR .. "src/hbmame/drivers/dbz.cpp",
	MAME_DIR .. "src/mame/video/dbz.cpp",
	MAME_DIR .. "src/hbmame/drivers/gradius3.cpp",
	MAME_DIR .. "src/mame/video/gradius3.cpp",
	MAME_DIR .. "src/hbmame/drivers/1943.cpp",
	MAME_DIR .. "src/mame/video/1943.cpp",
	MAME_DIR .. "src/mame/audio/hyprolyb.cpp",
	MAME_DIR .. "src/hbmame/drivers/nemesis.cpp",
	MAME_DIR .. "src/mame/video/nemesis.cpp",
	MAME_DIR .. "src/hbmame/drivers/pooyan.cpp",
	MAME_DIR .. "src/mame/video/pooyan.cpp",
	MAME_DIR .. "src/hbmame/drivers/shaolins.cpp",
	MAME_DIR .. "src/mame/video/shaolins.cpp",
	MAME_DIR .. "src/hbmame/drivers/timeplt.cpp",
	MAME_DIR .. "src/mame/audio/timeplt.cpp",
	MAME_DIR .. "src/mame/video/timeplt.cpp",
	MAME_DIR .. "src/hbmame/drivers/tmnt.cpp",
	MAME_DIR .. "src/mame/video/tmnt.cpp",
	MAME_DIR .. "src/hbmame/drivers/trackfld.cpp",
	MAME_DIR .. "src/mame/machine/konami1.cpp",
	MAME_DIR .. "src/mame/audio/trackfld.cpp",
	MAME_DIR .. "src/mame/video/trackfld.cpp",
	MAME_DIR .. "src/mame/video/tutankhm.cpp",
	MAME_DIR .. "src/hbmame/drivers/yiear.cpp",
	MAME_DIR .. "src/mame/video/yiear.cpp",
	MAME_DIR .. "src/mame/video/konami_helper.cpp",
	MAME_DIR .. "src/mame/video/k007121.cpp",
	MAME_DIR .. "src/mame/video/k051960.cpp",
	MAME_DIR .. "src/mame/video/k052109.cpp",
	MAME_DIR .. "src/mame/video/k053246_k053247_k055673.cpp",
	MAME_DIR .. "src/mame/video/k053251.cpp",
	MAME_DIR .. "src/mame/video/k053244_k053245.cpp",
	MAME_DIR .. "src/mame/video/k054000.cpp",
	MAME_DIR .. "src/mame/video/k054156_k054157_k056832.cpp",
	MAME_DIR .. "src/mame/video/k053936.cpp",
	MAME_DIR .. "src/mame/video/k055555.cpp",
}

createHBMAMEProjects(_target, _subtarget, "midway")
files {
	MAME_DIR .. "src/mame/drivers/8080bw.cpp",
	MAME_DIR .. "src/mame/audio/8080bw.cpp",
	MAME_DIR .. "src/mame/video/8080bw.cpp",
	MAME_DIR .. "src/mame/drivers/mw8080bw.cpp",
	MAME_DIR .. "src/mame/machine/mw8080bw.cpp",
	MAME_DIR .. "src/mame/audio/mw8080bw.cpp",
	MAME_DIR .. "src/mame/video/mw8080bw.cpp",
	MAME_DIR .. "src/hbmame/drivers/astrocde.cpp",
	MAME_DIR .. "src/mame/video/astrocde.cpp",
	MAME_DIR .. "src/hbmame/drivers/mcr.cpp",
	MAME_DIR .. "src/mame/machine/mcr.cpp",
	MAME_DIR .. "src/mame/video/mcr.cpp",
	MAME_DIR .. "src/hbmame/drivers/mcr3.cpp",
	MAME_DIR .. "src/mame/video/mcr3.cpp",
	MAME_DIR .. "src/mame/drivers/mcr68.cpp",
	MAME_DIR .. "src/mame/machine/mcr68.cpp",
	MAME_DIR .. "src/mame/video/mcr68.cpp",
	MAME_DIR .. "src/hbmame/drivers/midtunit.cpp",
	MAME_DIR .. "src/mame/machine/midtunit.cpp",
	MAME_DIR .. "src/mame/video/midtunit.cpp",
	MAME_DIR .. "src/hbmame/drivers/midwunit.cpp",
	MAME_DIR .. "src/mame/machine/midwunit.cpp",
	MAME_DIR .. "src/hbmame/drivers/midyunit.cpp",
	MAME_DIR .. "src/mame/machine/midyunit.cpp",
	MAME_DIR .. "src/mame/video/midyunit.cpp",
	MAME_DIR .. "src/mame/drivers/wmg.cpp",
	MAME_DIR .. "src/hbmame/drivers/williams.cpp",
	MAME_DIR .. "src/mame/machine/williams.cpp",
	MAME_DIR .. "src/mame/audio/williams.cpp",
	MAME_DIR .. "src/mame/video/williams.cpp",
	MAME_DIR .. "src/mame/machine/midwayic.cpp",
	MAME_DIR .. "src/mame/audio/midway.cpp",
	MAME_DIR .. "src/mame/audio/cage.cpp",
	MAME_DIR .. "src/mame/audio/dcs.cpp",
	MAME_DIR .. "src/mame/audio/csd.cpp",
}

createHBMAMEProjects(_target, _subtarget, "namco")
files {
	MAME_DIR .. "src/hbmame/drivers/galaga.cpp",
	MAME_DIR .. "src/mame/audio/galaga.cpp",
	MAME_DIR .. "src/mame/video/galaga.cpp",
	MAME_DIR .. "src/mame/video/bosco.cpp",
	MAME_DIR .. "src/mame/video/digdug.cpp",
	MAME_DIR .. "src/mame/machine/xevious.cpp",
	MAME_DIR .. "src/mame/video/xevious.cpp",
	MAME_DIR .. "src/hbmame/drivers/galaxian.cpp",
	MAME_DIR .. "src/mame/audio/galaxian.cpp",
	MAME_DIR .. "src/hbmame/video/galaxian.cpp",
	MAME_DIR .. "src/hbmame/drivers/mappy.cpp",
	MAME_DIR .. "src/mame/video/mappy.cpp",
	MAME_DIR .. "src/hbmame/drivers/pacland.cpp",
	MAME_DIR .. "src/mame/video/pacland.cpp",
	MAME_DIR .. "src/mame/drivers/polepos.cpp",
	MAME_DIR .. "src/mame/audio/polepos.cpp",
	MAME_DIR .. "src/mame/video/polepos.cpp",
	MAME_DIR .. "src/hbmame/drivers/rallyx.cpp",
	MAME_DIR .. "src/mame/video/rallyx.cpp",
	MAME_DIR .. "src/mame/machine/namcoio.cpp",
	MAME_DIR .. "src/mame/machine/namco06.cpp",
	MAME_DIR .. "src/mame/machine/namco50.cpp",
	MAME_DIR .. "src/mame/machine/namco51.cpp",
	MAME_DIR .. "src/mame/machine/namco53.cpp",
	MAME_DIR .. "src/mame/audio/namco52.cpp",
	MAME_DIR .. "src/mame/audio/namco54.cpp",
	MAME_DIR .. "src/mame/audio/timeplt.cpp",
}

createHBMAMEProjects(_target, _subtarget, "neogeo")
files {
	MAME_DIR .. "src/hbmame/drivers/neogeo.cpp",
	MAME_DIR .. "src/hbmame/drivers/neogeohb.cpp",
	MAME_DIR .. "src/hbmame/drivers/neogeo1.cpp",
	MAME_DIR .. "src/hbmame/drivers/kof94.cpp",
	MAME_DIR .. "src/hbmame/drivers/kof95.cpp",
	MAME_DIR .. "src/hbmame/drivers/kof96.cpp",
	MAME_DIR .. "src/hbmame/drivers/kof97.cpp",
	MAME_DIR .. "src/hbmame/drivers/kof98.cpp",
	MAME_DIR .. "src/hbmame/drivers/kof99.cpp",
	MAME_DIR .. "src/hbmame/drivers/kof2000.cpp",
	MAME_DIR .. "src/hbmame/drivers/kof2001.cpp",
	MAME_DIR .. "src/hbmame/drivers/kof2002.cpp",
	MAME_DIR .. "src/hbmame/drivers/kof2003.cpp",
	MAME_DIR .. "src/hbmame/drivers/mgd2.cpp",
	MAME_DIR .. "src/hbmame/drivers/mslug.cpp",
	MAME_DIR .. "src/hbmame/drivers/mslug2.cpp",
	MAME_DIR .. "src/hbmame/drivers/mslug3.cpp",
	MAME_DIR .. "src/hbmame/drivers/mslug4.cpp",
	MAME_DIR .. "src/hbmame/drivers/mslug5.cpp",
	MAME_DIR .. "src/hbmame/drivers/mslugx.cpp",
	MAME_DIR .. "src/hbmame/drivers/ngdoubledr.cpp",
	MAME_DIR .. "src/hbmame/drivers/nggaroup.cpp",
	MAME_DIR .. "src/hbmame/drivers/ngkofmisc.cpp",
	MAME_DIR .. "src/hbmame/drivers/nglastblade.cpp",
	MAME_DIR .. "src/hbmame/drivers/ngrbff.cpp",
	MAME_DIR .. "src/hbmame/drivers/ngrotd.cpp",
	MAME_DIR .. "src/hbmame/drivers/ngsamsho.cpp",
	MAME_DIR .. "src/hbmame/drivers/ngsengoku.cpp",
	MAME_DIR .. "src/hbmame/drivers/ngsvc.cpp",
	MAME_DIR .. "src/hbmame/drivers/ngwh.cpp",
	MAME_DIR .. "src/hbmame/video/neogeo.cpp",
	MAME_DIR .. "src/hbmame/drivers/neogeo_noslot.cpp",
	MAME_DIR .. "src/hbmame/video/neogeo_spr.cpp",
	MAME_DIR .. "src/hbmame/machine/ng_memcard.cpp",
	MAME_DIR .. "src/hbmame/bus/neogeo/prot.cpp",
	MAME_DIR .. "src/hbmame/bus/neogeo/banked_cart.cpp",
	MAME_DIR .. "src/hbmame/bus/neogeo_ctrl/ctrl.cpp",
	MAME_DIR .. "src/hbmame/bus/neogeo_ctrl/joystick.cpp",
	MAME_DIR .. "src/hbmame/bus/neogeo_ctrl/mahjong.cpp",
	MAME_DIR .. "src/hbmame/bus/neogeo_ctrl/dial.cpp",
	MAME_DIR .. "src/hbmame/bus/neogeo_ctrl/irrmaze.cpp",
	MAME_DIR .. "src/hbmame/bus/neogeo_ctrl/kizuna4p.cpp",
}

createHBMAMEProjects(_target, _subtarget, "nichibut")
files {
	MAME_DIR .. "src/hbmame/drivers/cclimber.cpp",
	MAME_DIR .. "src/mame/machine/cclimber.cpp",
	MAME_DIR .. "src/mame/audio/cclimber.cpp",
	MAME_DIR .. "src/mame/video/cclimber.cpp",
	MAME_DIR .. "src/hbmame/drivers/terracre.cpp",
	MAME_DIR .. "src/mame/video/terracre.cpp",
	MAME_DIR .. "src/mame/machine/nb1412m2.cpp",
}

createHBMAMEProjects(_target, _subtarget, "nintendo")
files {
	MAME_DIR .. "src/hbmame/drivers/dkong.cpp",
	MAME_DIR .. "src/mame/audio/dkong.cpp",
	MAME_DIR .. "src/mame/video/dkong.cpp",
	MAME_DIR .. "src/hbmame/drivers/mario.cpp",
	MAME_DIR .. "src/mame/audio/mario.cpp",
	MAME_DIR .. "src/mame/video/mario.cpp",
	MAME_DIR .. "src/mame/audio/nl_mario.cpp",
	MAME_DIR .. "src/hbmame/drivers/playch10.cpp",
	MAME_DIR .. "src/mame/machine/playch10.cpp",
	MAME_DIR .. "src/mame/video/playch10.cpp",
	MAME_DIR .. "src/hbmame/drivers/vsnes.cpp",
	MAME_DIR .. "src/mame/machine/vsnes.cpp",
	MAME_DIR .. "src/mame/video/vsnes.cpp",
	MAME_DIR .. "src/devices/video/ppu2c0x.cpp",
	MAME_DIR .. "src/devices/machine/z80dma.cpp",

}

createHBMAMEProjects(_target, _subtarget, "nmk")
files {
	MAME_DIR .. "src/hbmame/drivers/nmk16.cpp",
	MAME_DIR .. "src/mame/video/nmk16.cpp",
	MAME_DIR .. "src/mame/machine/nmk004.cpp",
	MAME_DIR .. "src/mame/audio/seibu.cpp",
}

createHBMAMEProjects(_target, _subtarget, "pacman")
files {
	MAME_DIR .. "src/hbmame/drivers/jrpacman.cpp",
	MAME_DIR .. "src/hbmame/drivers/pacman.cpp",
	MAME_DIR .. "src/hbmame/video/pacman.cpp",
	MAME_DIR .. "src/hbmame/drivers/pengo.cpp",
}

createHBMAMEProjects(_target, _subtarget, "phoenix")
files {
	MAME_DIR .. "src/hbmame/drivers/phoenix.cpp",
	MAME_DIR .. "src/mame/audio/phoenix.cpp",
	MAME_DIR .. "src/mame/video/phoenix.cpp",
	MAME_DIR .. "src/mame/audio/pleiads.cpp",
}

createHBMAMEProjects(_target, _subtarget, "psikyo")
files {
	MAME_DIR .. "src/hbmame/drivers/psikyo.cpp",
	MAME_DIR .. "src/mame/video/psikyo.cpp",
	MAME_DIR .. "src/hbmame/drivers/psikyosh.cpp",
	MAME_DIR .. "src/mame/video/psikyosh.cpp",
}

createHBMAMEProjects(_target, _subtarget, "sega")
files {
	MAME_DIR .. "src/hbmame/drivers/segas24.cpp",
	MAME_DIR .. "src/mame/video/segas24.cpp",
	MAME_DIR .. "src/mame/machine/megadriv.cpp",
	MAME_DIR .. "src/mame/drivers/megaplay.cpp",
	MAME_DIR .. "src/mame/drivers/megatech.cpp",
	MAME_DIR .. "src/hbmame/drivers/segac2.cpp",
	MAME_DIR .. "src/mame/drivers/segae.cpp",
	MAME_DIR .. "src/hbmame/drivers/segag80r.cpp",
	MAME_DIR .. "src/mame/machine/segag80.cpp",
	MAME_DIR .. "src/mame/audio/segag80r.cpp",
	MAME_DIR .. "src/mame/video/segag80r.cpp",
	MAME_DIR .. "src/hbmame/drivers/segaorun.cpp",
	MAME_DIR .. "src/mame/video/segaorun.cpp",
	MAME_DIR .. "src/hbmame/drivers/system1.cpp",
	MAME_DIR .. "src/mame/video/system1.cpp",
	MAME_DIR .. "src/hbmame/drivers/system16.cpp",
	MAME_DIR .. "src/mame/video/system16.cpp",
	MAME_DIR .. "src/mame/machine/315_5296.cpp",
	MAME_DIR .. "src/mame/machine/fd1089.cpp",
	MAME_DIR .. "src/mame/machine/fd1094.cpp",
	MAME_DIR .. "src/mame/machine/mc8123.cpp",
	MAME_DIR .. "src/mame/machine/segaic16.cpp",
	MAME_DIR .. "src/mame/machine/segacrpt_device.cpp",
	MAME_DIR .. "src/mame/machine/segacrp2_device.cpp",
	MAME_DIR .. "src/mame/audio/segasnd.cpp",
	MAME_DIR .. "src/mame/video/segaic16.cpp",
	MAME_DIR .. "src/mame/video/segaic16_road.cpp",
	MAME_DIR .. "src/mame/video/sega16sp.cpp",
	MAME_DIR .. "src/hbmame/drivers/segas16b.cpp",
	MAME_DIR .. "src/mame/video/segas16b.cpp",
	MAME_DIR .. "src/hbmame/drivers/segas32.cpp",
	MAME_DIR .. "src/mame/machine/segas32.cpp",
	MAME_DIR .. "src/mame/video/segas32.cpp",
	MAME_DIR .. "src/mame/machine/s32comm.cpp",
	MAME_DIR .. "src/mame/machine/m2comm.cpp", -- from here, for model2
	MAME_DIR .. "src/mame/audio/dsbz80.cpp",
	MAME_DIR .. "src/hbmame/drivers/model2.cpp",
	MAME_DIR .. "src/mame/video/model2rd.hxx",
	MAME_DIR .. "src/mame/video/model2.cpp",
	MAME_DIR .. "src/mame/machine/model2.cpp",
	MAME_DIR .. "src/mame/audio/segam1audio.cpp",
	MAME_DIR .. "src/mame/video/segaic24.cpp",
	MAME_DIR .. "src/mame/machine/315_5338a.cpp",
	MAME_DIR .. "src/mame/machine/315_5649.cpp",
	MAME_DIR .. "src/mame/machine/315-5881_crypt.cpp",
	MAME_DIR .. "src/mame/machine/315-5838_317-0229_comp.cpp",
	MAME_DIR .. "src/mame/machine/model1io.cpp",
}

createHBMAMEProjects(_target, _subtarget, "seibu")
files {
	MAME_DIR .. "src/hbmame/drivers/bloodbro.cpp",
	MAME_DIR .. "src/mame/video/bloodbro.cpp",
	MAME_DIR .. "src/hbmame/drivers/cabal.cpp",
	MAME_DIR .. "src/mame/video/cabal.cpp",
	MAME_DIR .. "src/mame/video/seibu_crtc.cpp",
}

createHBMAMEProjects(_target, _subtarget, "seta")
files {
	MAME_DIR .. "src/mame/machine/st0016.cpp",
	MAME_DIR .. "src/hbmame/drivers/simple_st0016.cpp",
}

createHBMAMEProjects(_target, _subtarget, "snk")
files {
	MAME_DIR .. "src/hbmame/drivers/snk6502.cpp",
	MAME_DIR .. "src/mame/audio/snk6502.cpp",
	MAME_DIR .. "src/mame/video/snk6502.cpp",
}

createHBMAMEProjects(_target, _subtarget, "sony")
files {
	MAME_DIR .. "src/hbmame/drivers/zn.cpp",
	MAME_DIR .. "src/mame/machine/znmcu.cpp",
	MAME_DIR .. "src/mame/machine/cat702.cpp",
	MAME_DIR .. "src/mame/audio/rax.cpp",
}

createHBMAMEProjects(_target, _subtarget, "taito")
files {
	MAME_DIR .. "src/hbmame/drivers/mexico86.cpp",
	MAME_DIR .. "src/mame/machine/mexico86.cpp",
	MAME_DIR .. "src/mame/video/mexico86.cpp",
	MAME_DIR .. "src/hbmame/drivers/ikage.cpp",
	MAME_DIR .. "src/mame/video/lkage.cpp",
	MAME_DIR .. "src/hbmame/drivers/arkanoid.cpp",
	MAME_DIR .. "src/mame/machine/arkanoid.cpp",
	MAME_DIR .. "src/mame/video/arkanoid.cpp",
	MAME_DIR .. "src/hbmame/drivers/asuka.cpp",
	MAME_DIR .. "src/mame/video/asuka.cpp",
	MAME_DIR .. "src/hbmame/drivers/bublbobl.cpp",
	MAME_DIR .. "src/mame/machine/bublbobl.cpp",
	MAME_DIR .. "src/mame/video/bublbobl.cpp",
	MAME_DIR .. "src/hbmame/drivers/rastan.cpp",
	MAME_DIR .. "src/mame/video/rastan.cpp",
	MAME_DIR .. "src/hbmame/drivers/retofinv.cpp",
	MAME_DIR .. "src/mame/video/retofinv.cpp",
	MAME_DIR .. "src/hbmame/drivers/taito_b.cpp",
	MAME_DIR .. "src/mame/video/taito_b.cpp",
	MAME_DIR .. "src/hbmame/drivers/taito_f2.cpp",
	MAME_DIR .. "src/mame/video/taito_f2.cpp",
	MAME_DIR .. "src/hbmame/drivers/taito_f3.cpp",
	MAME_DIR .. "src/mame/video/taito_f3.cpp",
	MAME_DIR .. "src/mame/machine/taitocchip.cpp",
	MAME_DIR .. "src/hbmame/drivers/volfied.cpp",
	MAME_DIR .. "src/mame/video/volfied.cpp",
	MAME_DIR .. "src/mame/audio/taitosnd.cpp",
	MAME_DIR .. "src/mame/audio/taito_en.cpp",
	MAME_DIR .. "src/mame/machine/taitoio.cpp",
	MAME_DIR .. "src/mame/video/taito_helper.cpp",
	MAME_DIR .. "src/mame/video/pc080sn.cpp",
	MAME_DIR .. "src/mame/video/pc090oj.cpp",
	MAME_DIR .. "src/mame/video/tc0100scn.cpp",
	MAME_DIR .. "src/mame/video/tc0280grd.cpp",
	MAME_DIR .. "src/mame/video/tc0360pri.cpp",
	MAME_DIR .. "src/mame/video/tc0480scp.cpp",
	MAME_DIR .. "src/mame/video/tc0110pcr.cpp",
	MAME_DIR .. "src/mame/video/tc0180vcu.cpp",
	MAME_DIR .. "src/hbmame/drivers/taito_l.cpp",
	MAME_DIR .. "src/mame/video/taito_l.cpp",
	MAME_DIR .. "src/mame/machine/taito68705interface.cpp",
	MAME_DIR .. "src/mame/machine/taitosjsec.cpp",
	MAME_DIR .. "src/hbmame/drivers/taitosj.cpp",
	MAME_DIR .. "src/mame/machine/taitosj.cpp",
	MAME_DIR .. "src/mame/video/taitosj.cpp",
	MAME_DIR .. "src/mame/audio/taito_zm.cpp", -- zn
}

createHBMAMEProjects(_target, _subtarget, "tehkan")
files {
	MAME_DIR .. "src/hbmame/drivers/solomon.cpp",
	MAME_DIR .. "src/mame/video/solomon.cpp",
	MAME_DIR .. "src/hbmame/drivers/tecmosys.cpp",
	MAME_DIR .. "src/mame/machine/tecmosys.cpp",
	MAME_DIR .. "src/mame/video/tecmosys.cpp",
	MAME_DIR .. "src/mame/video/tecmo_spr.cpp",
	MAME_DIR .. "src/mame/video/tecmo_mix.cpp",
	MAME_DIR .. "src/hbmame/drivers/bombjack.cpp",
	MAME_DIR .. "src/mame/video/bombjack.cpp",
	MAME_DIR .. "src/hbmame/drivers/tecmo.cpp",
	MAME_DIR .. "src/mame/video/tecmo.cpp",
	MAME_DIR .. "src/hbmame/drivers/tecmo16.cpp",
	MAME_DIR .. "src/mame/video/tecmo16.cpp",
	MAME_DIR .. "src/hbmame/drivers/tehkanwc.cpp",
	MAME_DIR .. "src/mame/video/tehkanwc.cpp",
	MAME_DIR .. "src/mame/drivers/wc90.cpp",
	MAME_DIR .. "src/mame/video/wc90.cpp",
}

createHBMAMEProjects(_target, _subtarget, "toaplan")
files {
	MAME_DIR .. "src/hbmame/drivers/snowbros.cpp",
	MAME_DIR .. "src/mame/video/snowbros.cpp",
	MAME_DIR .. "src/mame/drivers/toaplan1.cpp",
	MAME_DIR .. "src/mame/machine/toaplan1.cpp",
	MAME_DIR .. "src/mame/video/toaplan1.cpp",
	MAME_DIR .. "src/hbmame/drivers/toaplan2.cpp",
	MAME_DIR .. "src/mame/video/toaplan2.cpp",
	MAME_DIR .. "src/mame/video/gp9001.cpp",
	MAME_DIR .. "src/hbmame/drivers/twincobr.cpp",
	MAME_DIR .. "src/mame/machine/twincobr.cpp",
	MAME_DIR .. "src/mame/video/twincobr.cpp",
	MAME_DIR .. "src/mame/drivers/wardner.cpp",
	MAME_DIR .. "src/mame/video/toaplan_scu.cpp",
	MAME_DIR .. "src/mame/machine/nmk112.cpp",
}

createHBMAMEProjects(_target, _subtarget, "univers")
files {
	MAME_DIR .. "src/hbmame/drivers/docastle.cpp",
	MAME_DIR .. "src/mame/machine/docastle.cpp",
	MAME_DIR .. "src/mame/video/docastle.cpp",
	MAME_DIR .. "src/hbmame/drivers/mrdo.cpp",
	MAME_DIR .. "src/mame/video/mrdo.cpp",
}

createHBMAMEProjects(_target, _subtarget, "valadon")
files {
	MAME_DIR .. "src/hbmame/drivers/bagman.cpp",
	MAME_DIR .. "src/mame/machine/bagman.cpp",
	MAME_DIR .. "src/mame/video/bagman.cpp",
}

createHBMAMEProjects(_target, _subtarget, "misc")
files {
	MAME_DIR .. "src/hbmame/drivers/dotrikun.cpp",
	MAME_DIR .. "src/hbmame/drivers/ir.cpp",
	MAME_DIR .. "src/hbmame/drivers/schaser.cpp",
	MAME_DIR .. "src/hbmame/drivers/spacmiss.cpp",
	MAME_DIR .. "src/hbmame/drivers/monaco.cpp",
--	MAME_DIR .. "src/hbmame/drivers/atari_s1.cpp",
--	MAME_DIR .. "src/mame/machine/genpin.cpp",
	MAME_DIR .. "src/hbmame/drivers/kyugo.cpp",
	MAME_DIR .. "src/mame/video/kyugo.cpp",
	MAME_DIR .. "src/mame/drivers/skimaxx.cpp",
	MAME_DIR .. "src/hbmame/drivers/timelimit.cpp",
	MAME_DIR .. "src/mame/video/timelimt.cpp",
}

end

