-- enum wrapper
class RD_KAFKA_ADMIN_OP_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = rd_kafka_admin_op_any or a_value = rd_kafka_admin_op_createtopics or a_value = rd_kafka_admin_op_deletetopics or a_value = rd_kafka_admin_op_createpartitions or a_value = rd_kafka_admin_op_alterconfigs or a_value = rd_kafka_admin_op_describeconfigs or a_value = rd_kafka_admin_op__cnt
		end

	rd_kafka_admin_op_any: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_ADMIN_OP_ANY"
		end

	rd_kafka_admin_op_createtopics: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_ADMIN_OP_CREATETOPICS"
		end

	rd_kafka_admin_op_deletetopics: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_ADMIN_OP_DELETETOPICS"
		end

	rd_kafka_admin_op_createpartitions: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_ADMIN_OP_CREATEPARTITIONS"
		end

	rd_kafka_admin_op_alterconfigs: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_ADMIN_OP_ALTERCONFIGS"
		end

	rd_kafka_admin_op_describeconfigs: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_ADMIN_OP_DESCRIBECONFIGS"
		end

	rd_kafka_admin_op__cnt: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_ADMIN_OP__CNT"
		end

end
