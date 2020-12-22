-- enum wrapper
class RD_KAFKA_MSG_STATUS_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = rd_kafka_msg_status_not_persisted or a_value = rd_kafka_msg_status_possibly_persisted or a_value = rd_kafka_msg_status_persisted
		end

	rd_kafka_msg_status_not_persisted: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_MSG_STATUS_NOT_PERSISTED"
		end

	rd_kafka_msg_status_possibly_persisted: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_MSG_STATUS_POSSIBLY_PERSISTED"
		end

	rd_kafka_msg_status_persisted: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_MSG_STATUS_PERSISTED"
		end

end
