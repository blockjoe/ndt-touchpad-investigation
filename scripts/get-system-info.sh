#!/bin/sh

neofetch --color_blocks off --off | sed -r "s/[[:cntrl:]]\[[0-9]{1,3}m//g"
