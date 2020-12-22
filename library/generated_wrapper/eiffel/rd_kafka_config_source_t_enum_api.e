-- enum wrapper
class RD_KAFKA_CONFIG_SOURCE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = rd_kafka_config_source_unknown_config or a_value = rd_kafka_config_source_dynamic_topic_config or a_value = rd_kafka_config_source_dynamic_broker_config or a_value = rd_kafka_config_source_dynamic_default_broker_config or a_value = rd_kafka_config_source_static_broker_config or a_value = rd_kafka_config_source_default_config or a_value = rd_kafka_config_source__cnt
		end

	rd_kafka_config_source_unknown_config: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CONFIG_SOURCE_UNKNOWN_CONFIG"
		end

	rd_kafka_config_source_dynamic_topic_config: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CONFIG_SOURCE_DYNAMIC_TOPIC_CONFIG"
		end

	rd_kafka_config_source_dynamic_broker_config: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CONFIG_SOURCE_DYNAMIC_BROKER_CONFIG"
		end

	rd_kafka_config_source_dynamic_default_broker_config: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CONFIG_SOURCE_DYNAMIC_DEFAULT_BROKER_CONFIG"
		end

	rd_kafka_config_source_static_broker_config: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CONFIG_SOURCE_STATIC_BROKER_CONFIG"
		end

	rd_kafka_config_source_default_config: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CONFIG_SOURCE_DEFAULT_CONFIG"
		end

	rd_kafka_config_source__cnt: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CONFIG_SOURCE__CNT"
		end

end
