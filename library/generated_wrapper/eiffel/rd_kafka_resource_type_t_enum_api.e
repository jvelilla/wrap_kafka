-- enum wrapper
class RD_KAFKA_RESOURCE_TYPE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = rd_kafka_resource_unknown or a_value = rd_kafka_resource_any or a_value = rd_kafka_resource_topic or a_value = rd_kafka_resource_group or a_value = rd_kafka_resource_broker or a_value = rd_kafka_resource__cnt
		end

	rd_kafka_resource_unknown: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESOURCE_UNKNOWN"
		end

	rd_kafka_resource_any: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESOURCE_ANY"
		end

	rd_kafka_resource_topic: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESOURCE_TOPIC"
		end

	rd_kafka_resource_group: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESOURCE_GROUP"
		end

	rd_kafka_resource_broker: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESOURCE_BROKER"
		end

	rd_kafka_resource__cnt: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESOURCE__CNT"
		end

end
