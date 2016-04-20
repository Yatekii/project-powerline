/**
 * @file mac_orphan.c
 *
 * @brief Implements orphan scan related functionalities on the parent side.
 *
 * Copyright (c) 2014-2015 Atmel Corporation. All rights reserved.
 *
 * \asf_license_start
 *
 * \page License
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * 3. The name of Atmel may not be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * 4. This software may only be redistributed and used in connection with an
 *    Atmel microcontroller product.
 *
 * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
 * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * \asf_license_stop
 *
 */

/*
 * Copyright (c) 2014-2015 Atmel Corporation. All rights reserved.
 *
 * Licensed under Atmel's Limited License Agreement --> EULA.txt
 */

/* === Includes ============================================================ */
#include <compiler.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>
#include "return_val.h"
#include "pal.h"
#include "bmm.h"
#include "qmm.h"
#include "tal.h"
#include "ieee_const.h"
#include "mac_msg_const.h"
#include "mac_api.h"
#include "mac_msg_types.h"
#include "mac_data_structures.h"
#include "stack_config.h"
#include "mac_internal.h"
#include "mac.h"
#include "mac_build_config.h"

/* === Macros  ============================================================= */

/* === Globals ============================================================= */

/* === Prototypes ========================================================== */

/* === Implementation ====================================================== */

#if (MAC_ORPHAN_INDICATION_RESPONSE == 1)

/**
 * @brief Handles an orphan notification
 *
 * This function processes an incoming orphan notification command.
 * A PAN coordinator gets to this function through a TAL data indication
 * message.
 *
 * @param msg Frame reception buffer
 */
void mac_process_orphan_notification(buffer_t *msg)
{
	mlme_orphan_ind_t *moi = (mlme_orphan_ind_t *)BMM_BUFFER_POINTER(msg);

	moi->cmdcode = MLME_ORPHAN_INDICATION;
	ADDR_COPY_DST_SRC_64(moi->OrphanAddress,
			mac_parse_data.src_addr.long_address);

	/* Append the MLME orphan indication message to MAC-NHLE queue */
	qmm_queue_append(&mac_nhle_q, msg);
}

#endif /* MAC_ORPHAN_INDICATION_RESPONSE */

#if (MAC_ORPHAN_INDICATION_RESPONSE == 1)

/**
 * @brief Implements the MLME-ORPHAN.response
 *
 * The MLME-ORPHAN.response primitive allows the next higher layer
 * of a coordinator to respond to the MLME-ORPHAN.indication primitive.
 * The MLME-ORPHAN.response primitive is generated by the next higher
 * layer and issued to its MLME when it reaches a decision about whether
 * the orphaned device indicated in the MLME-ORPHAN.indication primitive
 * is associated.
 *
 * @param m Pointer to the message.
 */
void mlme_orphan_response(uint8_t *m)
{
	bool transmission_status = mac_tx_coord_realignment_command(
			ORPHANREALIGNMENT,
			(buffer_t *)m,
			tal_pib.PANId,
			tal_pib.CurrentChannel,
			tal_pib.CurrentPage);

	if (!transmission_status) {
		mac_mlme_comm_status(MAC_CHANNEL_ACCESS_FAILURE,
				(buffer_t *)m);
	}
}

#endif /* MAC_ORPHAN_INDICATION_RESPONSE */

/* EOF */
