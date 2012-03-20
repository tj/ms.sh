#!/usr/bin/env bash

. ms.sh

ms 1000
ms 1s
ms 1m
ms 1h
ms 1d
ms 1y
ms 10s
ms 5d

ms_to_s $(ms 500)
ms_to_s $(ms 1s)
ms_to_s $(ms 15s)
ms_to_s $(ms 25m)
ms_to_s $(ms 60m)
ms_to_s $(ms 1h)
ms_to_s $(ms 2h)
ms_to_s $(ms 1d)
ms_to_s $(ms 5d)
ms_to_s $(ms 1y)
ms_to_s $(ms 5y)