# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

CXX          = dpcpp
DPCPP_SAMPLE = get-platforms

${DPCPP_SAMPLE}.out: ${DPCPP_SAMPLE}.bin
	./${DPCPP_SAMPLE}.bin > $@
	cat $@

${DPCPP_SAMPLE}.bin: ${DPCPP_SAMPLE}.cpp
	${CXX} -o $@ $^

clean:
	rm -rf *.out *.bin
