-- enum wrapper
class RD_KAFKA_VTYPE_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = rd_kafka_vtype_end or a_value = rd_kafka_vtype_topic or a_value = rd_kafka_vtype_rkt or a_value = rd_kafka_vtype_partition or a_value = rd_kafka_vtype_value or a_value = rd_kafka_vtype_key or a_value = rd_kafka_vtype_opaque or a_value = rd_kafka_vtype_msgflags or a_value = rd_kafka_vtype_timestamp or a_value = rd_kafka_vtype_header or a_value = rd_kafka_vtype_headers
		end

	rd_kafka_vtype_end: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_VTYPE_END"
		end

	rd_kafka_vtype_topic: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_VTYPE_TOPIC"
		end

	rd_kafka_vtype_rkt: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_VTYPE_RKT"
		end

	rd_kafka_vtype_partition: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_VTYPE_PARTITION"
		end

	rd_kafka_vtype_value: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_VTYPE_VALUE"
		end

	rd_kafka_vtype_key: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_VTYPE_KEY"
		end

	rd_kafka_vtype_opaque: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_VTYPE_OPAQUE"
		end

	rd_kafka_vtype_msgflags: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_VTYPE_MSGFLAGS"
		end

	rd_kafka_vtype_timestamp: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_VTYPE_TIMESTAMP"
		end

	rd_kafka_vtype_header: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_VTYPE_HEADER"
		end

	rd_kafka_vtype_headers: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_VTYPE_HEADERS"
		end

end
