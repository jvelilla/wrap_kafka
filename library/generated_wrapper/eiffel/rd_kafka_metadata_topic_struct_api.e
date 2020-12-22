note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class RD_KAFKA_METADATA_TOPIC_STRUCT_API

inherit

	MEMORY_STRUCTURE

	
create

	make,
	make_by_pointer

feature -- Measurement

	structure_size: INTEGER 
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	topic:  detachable C_STRING
			-- Access member `topic`
		require
			exists: exists
		do
			if attached c_topic (item) as l_ptr then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_topic (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.string.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_topic (a_value: C_STRING) 
			-- Change the value of member `topic` to `a_value`.
		require
			exists: exists
		do
			set_c_topic (item, a_value.item )
		end

	partition_cnt: INTEGER
			-- Access member `partition_cnt`
		require
			exists: exists
		do
			Result := c_partition_cnt (item)
		ensure
			result_correct: Result = c_partition_cnt (item)
		end

	set_partition_cnt (a_value: INTEGER) 
			-- Change the value of member `partition_cnt` to `a_value`.
		require
			exists: exists
		do
			set_c_partition_cnt (item, a_value)
		ensure
			partition_cnt_set: a_value = partition_cnt
		end

	partitions: detachable RD_KAFKA_METADATA_PARTITION_STRUCT_API 
			-- Access member `partitions`
		require
			exists: exists
		do
			if attached c_partitions (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_partitions (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_partitions (item) 
		end

	set_partitions (a_value: RD_KAFKA_METADATA_PARTITION_STRUCT_API) 
			-- Set member `partitions`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_partitions (item, a_value.item)
		ensure
			partitions_set: attached partitions as l_value implies l_value.item = a_value.item
		end

	err: INTEGER
			-- Access member `err`
		require
			exists: exists
		do
			Result := c_err (item)
		ensure
			result_correct: Result = c_err (item)
		end

	set_err (a_value: INTEGER) 
			-- Change the value of member `err` to `a_value`.
		require
			exists: exists
		do
			set_c_err (item, a_value)
		ensure
			err_set: a_value = err
		end

feature {NONE} -- Implementation wrapper for struct struct rd_kafka_metadata_topic

	sizeof_external: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"sizeof(struct rd_kafka_metadata_topic)"
		end

	c_topic (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata_topic*)$an_item)->topic
			]"
		end

	set_c_topic (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata_topic*)$an_item)->topic =  (char*)$a_value
			]"
		ensure
			topic_set: a_value = c_topic (an_item)
		end

	c_partition_cnt (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata_topic*)$an_item)->partition_cnt
			]"
		end

	set_c_partition_cnt (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata_topic*)$an_item)->partition_cnt =  (int)$a_value
			]"
		ensure
			partition_cnt_set: a_value = c_partition_cnt (an_item)
		end

	c_partitions (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata_topic*)$an_item)->partitions
			]"
		end

	set_c_partitions (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata_topic*)$an_item)->partitions =  (struct rd_kafka_metadata_partition*)$a_value
			]"
		ensure
			partitions_set: a_value = c_partitions (an_item)
		end

	c_err (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata_topic*)$an_item)->err
			]"
		end

	set_c_err (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata_topic*)$an_item)->err =  (rd_kafka_resp_err_t)$a_value
			]"
		ensure
			err_set: a_value = c_err (an_item)
		end

end
