# wrap_kafka
`wrap_kafka` is an Eiffel binding of [librdkafka - the Apache Kafka C/C++ client library](https://github.com/edenhill/librdkafka) 
using [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.

librdkafka is a C library implementation of the Apache Kafka protocol, providing Producer, Consumer and Admin clients. It was designed with message delivery reliability and high performance in mind, current figures exceed 1 million msgs/second for the producer and 3 million msgs/second for the consumer.

librdkafka is licensed under the 2-clause BSD license.

## Requirements 

*  [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.
*  [librdkafka C API](https://github.com/edenhill/librdkafka)


## Download and  Install


### Linux
	$ apt install librdkafka-dev


### Windows
	
Installing librdkafka using vcpkg
You can download and install librdkafka using the vcpkg dependency manager:

	# Install vcpkg if not already installed
	$ git clone https://github.com/Microsoft/vcpkg.git
	$ cd vcpkg
	$ ./bootstrap-vcpkg.sh
	$ ./vcpkg integrate install

	# Install librdkafka
	$ vcpkg install librdkafka or vcpkg install librdkafka:x64-windows
## Status

To learn more about how to install librdkafka read the following section [Kafka Installation](https://github.com/edenhill/librdkafka#installation)



## Examples


### How to compile the C library glue code.

Before to use the examples you will need to compile the C glue code, go to 

	library/generated_wrapper/c/src

and run

	finish_freezing --library

It will copy the C lib `eif_kafka.a` to `$ECF_CONFIG_PATH/C/spec/$(ISE_PLATFORM)/lib/`  or `eif_kafka.lib`  to `$ECF_CONFIG_PATH/C/spec/$ISE_C_COMPILER/$ISE_PLATFORM/lib` 






