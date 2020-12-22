-- enum wrapper
class RD_KAFKA_TYPE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = rd_kafka_producer or a_value = rd_kafka_consumer
		end

	rd_kafka_producer: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_PRODUCER"
		end

	rd_kafka_consumer: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CONSUMER"
		end

end
