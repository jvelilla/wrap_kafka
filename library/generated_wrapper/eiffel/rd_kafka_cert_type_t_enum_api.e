-- enum wrapper
class RD_KAFKA_CERT_TYPE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = rd_kafka_cert_public_key or a_value = rd_kafka_cert_private_key or a_value = rd_kafka_cert_ca or a_value = rd_kafka_cert__cnt
		end

	rd_kafka_cert_public_key: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CERT_PUBLIC_KEY"
		end

	rd_kafka_cert_private_key: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CERT_PRIVATE_KEY"
		end

	rd_kafka_cert_ca: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CERT_CA"
		end

	rd_kafka_cert__cnt: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CERT__CNT"
		end

end
