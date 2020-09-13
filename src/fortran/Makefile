# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

FC       = ifort
F_SAMPLE = hello

${F_SAMPLE}.out: ${F_SAMPLE}.bin
	./${F_SAMPLE}.bin > $@
	cat $@

${F_SAMPLE}.bin: ${F_SAMPLE}.f90
	${FC} -o $@ $^

clean:
	rm -rf *.out *.bin
