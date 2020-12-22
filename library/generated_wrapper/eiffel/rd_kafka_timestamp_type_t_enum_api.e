-- enum wrapper
class RD_KAFKA_TIMESTAMP_TYPE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = rd_kafka_timestamp_not_available or a_value = rd_kafka_timestamp_create_time or a_value = rd_kafka_timestamp_log_append_time
		end

	rd_kafka_timestamp_not_available: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_TIMESTAMP_NOT_AVAILABLE"
		end

	rd_kafka_timestamp_create_time: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_TIMESTAMP_CREATE_TIME"
		end

	rd_kafka_timestamp_log_append_time: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_TIMESTAMP_LOG_APPEND_TIME"
		end

end
