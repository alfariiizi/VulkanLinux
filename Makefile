CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread
SRC = *.cpp

VulkanTest: $(SRC)
	g++ $(CFLAGS) -o VulkanTest $(SRC) $(LDFLAGS)

.PHONY: test clean

test: VulkanTest
	./VulkanTest

clean:
	rm -f VulkanTest
