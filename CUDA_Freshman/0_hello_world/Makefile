
#########################################################################
#
# Makefile for cuda_test
#
#########################################################################

TEST_SOURCE = hello_world.cu

TARGETBIN := ./helloCuda

CC = nvcc

$(TARGETBIN):$(TEST_SOURCE)
	$(CC)  $(TEST_SOURCE) -o $(TARGETBIN)

.PHONY:clean
clean:
	-rm -rf $(TARGETBIN)

