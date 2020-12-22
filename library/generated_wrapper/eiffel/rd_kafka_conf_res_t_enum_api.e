-- enum wrapper
class RD_KAFKA_CONF_RES_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = rd_kafka_conf_unknown or a_value = rd_kafka_conf_invalid or a_value = rd_kafka_conf_ok
		end

	rd_kafka_conf_unknown: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CONF_UNKNOWN"
		end

	rd_kafka_conf_invalid: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CONF_INVALID"
		end

	rd_kafka_conf_ok: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CONF_OK"
		end

end
