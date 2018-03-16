// license:BSD-3-Clause
// copyright-holders:Angelo Salese
/*************************************************************************************************

(Hologram) Time Traveler (c) 1991 Virtual Image Productions / Sega

preliminary driver by Angelo Salese

TODO:
- unemulated Pioneer LDV-4200 and Sony LDP-1450 players, needs a dump of the BIOSes and proper
  hook-up;

==================================================================================================

Time Traveler ROM image

warren@dragons-lair-project.com
6/25/01


ROM is a 27C020 (256kbit x 8 = 256 KB)
ROM sticker says 6/18/91

CPU is an Intel 80188

*************************************************************************************************/

#include "emu.h"
#include "cpu/i86/i186.h"
#include "machine/eeprompar.h"
#include "machine/i8255.h"
#include "machine/ins8250.h"
#include "screen.h"


class timetrv_state : public driver_device
{
public:
	timetrv_state(const machine_config &mconfig, device_type type, const char *tag)
		: driver_device(mconfig, type, tag),
		m_led_vram_lo(*this, "led_vralo"),
		m_led_vram_hi(*this, "led_vrahi"),
		m_maincpu(*this, "maincpu") { }

	required_shared_ptr<uint8_t> m_led_vram_lo;
	required_shared_ptr<uint8_t> m_led_vram_hi;
	DECLARE_READ8_MEMBER(test1_r);
	DECLARE_READ8_MEMBER(test2_r);
	DECLARE_READ8_MEMBER(in_r);
	virtual void video_start() override;
	uint32_t screen_update_timetrv(screen_device &screen, bitmap_rgb32 &bitmap, const rectangle &cliprect);
	required_device<cpu_device> m_maincpu;
	void timetrv(machine_config &config);
	void timetrv_io(address_map &map);
	void timetrv_map(address_map &map);
};



void timetrv_state::video_start()
{
}

uint32_t timetrv_state::screen_update_timetrv(screen_device &screen, bitmap_rgb32 &bitmap, const rectangle &cliprect)
{
	popmessage("%s%s",reinterpret_cast<char *>(m_led_vram_lo.target()),reinterpret_cast<char *>(m_led_vram_hi.target()));
	return 0;
}

READ8_MEMBER(timetrv_state::test1_r)
{
	return ioport("IN0")->read();//machine().rand();
}

READ8_MEMBER(timetrv_state::test2_r)
{
	/*bit 7,eeprom read bit*/
	return (ioport("IN1")->read() & 0x7f);//machine().rand();
}


READ8_MEMBER(timetrv_state::in_r)
{
	return 0xff;
}

void timetrv_state::timetrv_map(address_map &map)
{
	map(0x00000, 0x0ffff).ram(); //irq vectors + work ram
	map(0x10000, 0x107ff).rw("eeprom", FUNC(eeprom_parallel_28xx_device::read), FUNC(eeprom_parallel_28xx_device::write));
	map(0xc0000, 0xfffff).rom();
}

void timetrv_state::timetrv_io(address_map &map)
{
	map(0x0122, 0x0123).nopw(); //eeprom write bits
	map(0x1000, 0x1003).rw("ppi1", FUNC(i8255_device::read), FUNC(i8255_device::write));
	map(0x1080, 0x1083).rw("ppi2", FUNC(i8255_device::read), FUNC(i8255_device::write));
	map(0x1100, 0x1107).rw("uart", FUNC(ins8250_device::ins8250_r), FUNC(ins8250_device::ins8250_w));
	map(0x1180, 0x1187).ram().share("led_vralo");//led string,part 1
	map(0x1200, 0x1207).ram().share("led_vrahi");//led string,part 2
	map(0xff80, 0xffff).ram(); //am80188-em-like cpu internal regs?
}


static INPUT_PORTS_START( timetrv )
	PORT_START("IN0")
	PORT_BIT( 0x01, IP_ACTIVE_LOW, IPT_JOYSTICK_UP )
	PORT_BIT( 0x02, IP_ACTIVE_LOW, IPT_JOYSTICK_DOWN )
	PORT_BIT( 0x04, IP_ACTIVE_LOW, IPT_JOYSTICK_LEFT )
	PORT_BIT( 0x08, IP_ACTIVE_LOW, IPT_JOYSTICK_RIGHT )
	PORT_BIT( 0x10, IP_ACTIVE_LOW, IPT_START1 )
	PORT_BIT( 0x20, IP_ACTIVE_LOW, IPT_START2 )
	PORT_BIT( 0x40, IP_ACTIVE_LOW, IPT_COIN1 )
	PORT_BIT( 0x80, IP_ACTIVE_LOW, IPT_COIN2 )

	PORT_START("IN1")
	PORT_DIPNAME( 0x01, 0x01, DEF_STR( Unknown ) )
	PORT_DIPSETTING(    0x01, DEF_STR( Off ) )
	PORT_DIPSETTING(    0x00, DEF_STR( On ) )
	PORT_DIPNAME( 0x02, 0x02, DEF_STR( Unknown ) )
	PORT_DIPSETTING(    0x02, DEF_STR( Off ) )
	PORT_DIPSETTING(    0x00, DEF_STR( On ) )
	PORT_DIPNAME( 0x04, 0x04, DEF_STR( Unknown ) )
	PORT_DIPSETTING(    0x04, DEF_STR( Off ) )
	PORT_DIPSETTING(    0x00, DEF_STR( On ) )
	PORT_DIPNAME( 0x08, 0x08, DEF_STR( Unknown ) )
	PORT_DIPSETTING(    0x08, DEF_STR( Off ) )
	PORT_DIPSETTING(    0x00, DEF_STR( On ) )
	PORT_BIT( 0x10, IP_ACTIVE_LOW, IPT_BUTTON1 )
	PORT_DIPNAME( 0x20, 0x20, DEF_STR( Unknown ) )
	PORT_DIPSETTING(    0x20, DEF_STR( Off ) )
	PORT_DIPSETTING(    0x00, DEF_STR( On ) )
	PORT_DIPNAME( 0x40, 0x40, DEF_STR( Service_Mode ) )
	PORT_DIPSETTING(    0x40, DEF_STR( Off ) )
	PORT_DIPSETTING(    0x00, DEF_STR( On ) )
	// 0x80 eeprom read bit
INPUT_PORTS_END

MACHINE_CONFIG_START(timetrv_state::timetrv)

	/* basic machine hardware */
	MCFG_CPU_ADD("maincpu",I80188,20000000) //???
	MCFG_CPU_PROGRAM_MAP(timetrv_map)
	MCFG_CPU_IO_MAP(timetrv_io)
	// interrupts are generated by internally-driven timers

	MCFG_EEPROM_2816_ADD("eeprom")

	MCFG_DEVICE_ADD("ppi1", I8255, 0)
	MCFG_I8255_IN_PORTA_CB(READ8(timetrv_state, test1_r)) //inputs
	MCFG_I8255_IN_PORTB_CB(READ8(timetrv_state, test2_r)) //eeprom read bit + inputs

	MCFG_DEVICE_ADD("ppi2", I8255, 0)
	MCFG_I8255_IN_PORTA_CB(READ8(timetrv_state, in_r)) //dsw
	MCFG_I8255_IN_PORTB_CB(READ8(timetrv_state, in_r)) //dsw
	MCFG_I8255_IN_PORTC_CB(READ8(timetrv_state, in_r)) //dsw

	MCFG_DEVICE_ADD("uart", INS8250, 1843200) // serial interface for laserdisc

	/* video hardware */
	MCFG_SCREEN_ADD("screen", RASTER)
	MCFG_SCREEN_REFRESH_RATE(60)
	MCFG_SCREEN_VBLANK_TIME(ATTOSECONDS_IN_USEC(0))
	MCFG_SCREEN_SIZE(512, 512)
	MCFG_SCREEN_VISIBLE_AREA(0*8, 512-1, 0*8, 512-1)
	MCFG_SCREEN_UPDATE_DRIVER(timetrv_state, screen_update_timetrv)

	MCFG_PALETTE_ADD("palette", 512)

	/* sound hardware */
MACHINE_CONFIG_END

/***************************************************************************

  Game driver(s)

***************************************************************************/

ROM_START( timetrv )
	ROM_REGION( 0x100000, "maincpu", 0 )
	ROM_LOAD( "tt061891.bin",   0xc0000, 0x40000, CRC(a3d44219) SHA1(7c5003b6d3df1e472db45abd725e7d3d43f0dfb4) )

	DISK_REGION( "laserdisc" )
	DISK_IMAGE_READONLY( "timetrv", 0, NO_DUMP )
ROM_END

ROM_START( timetrv2 )
	ROM_REGION( 0x100000, "maincpu", 0 )
	ROM_LOAD( "epr-72491.u9",   0xc0000, 0x40000, CRC(c7998e2f) SHA1(26060653b2368f52c304e6433b4f447f99a36839) )

	DISK_REGION( "laserdisc" )
	DISK_IMAGE_READONLY( "timetrv", 0, NO_DUMP )
ROM_END

GAME( 1991, timetrv,  0,       timetrv,  timetrv, timetrv_state,  0, ROT0, "Virtual Image Productions (Sega license)", "Time Traveler (set 1)", MACHINE_NO_SOUND | MACHINE_NOT_WORKING )
GAME( 1991, timetrv2, timetrv, timetrv,  timetrv, timetrv_state,  0, ROT0, "Virtual Image Productions (Sega license)", "Time Traveler (set 2)", MACHINE_NO_SOUND | MACHINE_NOT_WORKING ) // Europe?
