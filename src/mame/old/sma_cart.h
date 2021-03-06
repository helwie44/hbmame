// license:BSD-3-Clause
// copyright-holders:S. Smith,David Haywood
#ifndef __NEOGEO_SMA_CART_H
#define __NEOGEO_SMA_CART_H

#include "neogeo_slot.h"
#include "banked_cart.h"
#include "sma_prot.h"
#include "cmc_prot.h"

// ======================> neogeo_sma_cart

class neogeo_sma_cart : public device_t,
						public device_neogeo_cart_interface
{
public:
	// construction/destruction
	neogeo_sma_cart(const machine_config &mconfig, device_type type, const char *name, const char *tag, device_t *owner, uint16_t clock, const char *shortname, const char *source);
	neogeo_sma_cart(const machine_config &mconfig, const char *tag, device_t *owner, uint16_t clock);

	// device-level overrides
	virtual void device_start() override;
	virtual void device_reset() override;
	virtual machine_config_constructor device_mconfig_additions() const override;

	// reading and writing
	virtual DECLARE_READ16_MEMBER(read_rom) override;

	virtual void activate_cart(ACTIVATE_CART_PARAMS) override {}
	virtual void decrypt_all(DECRYPT_ALL_PARAMS) override {}
	virtual int get_fixed_bank_type(void) override { return 0; }

	required_device<neogeo_banked_cart_device> m_banked_cart;
	required_device<sma_prot_device> m_sma_prot;
	required_device<cmc_prot_device> m_cmc_prot;
};



// device type definition
extern const device_type NEOGEO_SMA_CART;


/*************************************************
 KOF 99
**************************************************/

class neogeo_sma_kof99_cart : public neogeo_sma_cart
{
public:
	neogeo_sma_kof99_cart(const machine_config &mconfig, const char *tag, device_t *owner, uint32_t clock);
	virtual void activate_cart(ACTIVATE_CART_PARAMS) override;
	virtual void decrypt_all(DECRYPT_ALL_PARAMS) override;
	virtual int get_fixed_bank_type(void) override { return 1; }
};
extern const device_type NEOGEO_SMA_KOF99_CART;

/*************************************************
 Garou
**************************************************/

class neogeo_sma_garou_cart : public neogeo_sma_cart
{
public:
	neogeo_sma_garou_cart(const machine_config &mconfig, const char *tag, device_t *owner, uint32_t clock);
	virtual void activate_cart(ACTIVATE_CART_PARAMS) override;
	virtual void decrypt_all(DECRYPT_ALL_PARAMS) override;
	virtual int get_fixed_bank_type(void) override { return 1; }
};
extern const device_type NEOGEO_SMA_GAROU_CART;

class neogeo_sma_garouh_cart : public neogeo_sma_cart
{
public:
	neogeo_sma_garouh_cart(const machine_config &mconfig, const char *tag, device_t *owner, uint32_t clock);
	virtual void activate_cart(ACTIVATE_CART_PARAMS) override;
	virtual void decrypt_all(DECRYPT_ALL_PARAMS) override;
	virtual int get_fixed_bank_type(void) override { return 1; }
};
extern const device_type NEOGEO_SMA_GAROUH_CART;

/*************************************************
 Metal Slug 3
**************************************************/

class neogeo_sma_mslug3_cart : public neogeo_sma_cart
{
public:
	neogeo_sma_mslug3_cart(const machine_config &mconfig, const char *tag, device_t *owner, uint32_t clock);
	virtual void activate_cart(ACTIVATE_CART_PARAMS) override;
	virtual void decrypt_all(DECRYPT_ALL_PARAMS) override;
	virtual int get_fixed_bank_type(void) override { return 1; }
};
extern const device_type NEOGEO_SMA_MSLUG3_CART;


/*************************************************
 KOF2000
**************************************************/

class neogeo_sma_kof2000_cart : public neogeo_sma_cart
{
public:
	neogeo_sma_kof2000_cart(const machine_config &mconfig, const char *tag, device_t *owner, uint32_t clock);
	virtual void activate_cart(ACTIVATE_CART_PARAMS) override;
	virtual void decrypt_all(DECRYPT_ALL_PARAMS) override;
	virtual int get_fixed_bank_type(void) override { return 2; }
};
extern const device_type NEOGEO_SMA_KOF2000_CART;


#endif
