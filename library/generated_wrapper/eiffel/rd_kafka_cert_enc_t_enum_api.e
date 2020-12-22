-- enum wrapper
class RD_KAFKA_CERT_ENC_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = rd_kafka_cert_enc_pkcs12 or a_value = rd_kafka_cert_enc_der or a_value = rd_kafka_cert_enc_pem or a_value = rd_kafka_cert_enc__cnt
		end

	rd_kafka_cert_enc_pkcs12: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CERT_ENC_PKCS12"
		end

	rd_kafka_cert_enc_der: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CERT_ENC_DER"
		end

	rd_kafka_cert_enc_pem: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CERT_ENC_PEM"
		end

	rd_kafka_cert_enc__cnt: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_CERT_ENC__CNT"
		end

end
