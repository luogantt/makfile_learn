
#########################################################################
#
# Makefile for cuda_test
#
#########################################################################

TEST_SOURCE = grid_block.cu 

TARGETBIN := ./dim

CC = nvcc

$(TARGETBIN):$(TEST_SOURCE)
	$(CC)  $(TEST_SOURCE) -o $(TARGETBIN)

.PHONY:clean
clean:
	-rm -rf $(TARGETBIN)

