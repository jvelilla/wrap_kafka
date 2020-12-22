-- enum wrapper
class RD_KAFKA_THREAD_TYPE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = rd_kafka_thread_main or a_value = rd_kafka_thread_background or a_value = rd_kafka_thread_broker
		end

	rd_kafka_thread_main: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_THREAD_MAIN"
		end

	rd_kafka_thread_background: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_THREAD_BACKGROUND"
		end

	rd_kafka_thread_broker: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_THREAD_BROKER"
		end

end
