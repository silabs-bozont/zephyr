#!/usr/bin/env bash
# Copyright 2022 Nordic Semiconductor
# SPDX-License-Identifier: Apache-2.0

source $(dirname "${BASH_SOURCE[0]}")/../../_mesh_test.sh

# test tx callbacks parameters and xmit sequence for single adv
RunTest mesh_adv_tx_cb_single adv_tx_cb_single adv_rx_xmit

overlay=overlay_workq_sys_conf
RunTest mesh_adv_tx_cb_single_workq adv_tx_cb_single adv_rx_xmit

overlay="overlay_multi_adv_sets_conf"
RunTest mesh_adv_tx_cb_single_multi_adv_sets adv_tx_cb_single adv_rx_xmit
