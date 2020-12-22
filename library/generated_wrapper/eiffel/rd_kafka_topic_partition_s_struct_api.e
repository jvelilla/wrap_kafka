note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class RD_KAFKA_TOPIC_PARTITION_S_STRUCT_API

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

	partition: INTEGER
			-- Access member `partition`
		require
			exists: exists
		do
			Result := c_partition (item)
		ensure
			result_correct: Result = c_partition (item)
		end

	set_partition (a_value: INTEGER) 
			-- Change the value of member `partition` to `a_value`.
		require
			exists: exists
		do
			set_c_partition (item, a_value)
		ensure
			partition_set: a_value = partition
		end

	offset: INTEGER_64
			-- Access member `offset`
		require
			exists: exists
		do
			Result := c_offset (item)
		ensure
			result_correct: Result = c_offset (item)
		end

	set_offset (a_value: INTEGER_64) 
			-- Change the value of member `offset` to `a_value`.
		require
			exists: exists
		do
			set_c_offset (item, a_value)
		ensure
			offset_set: a_value = offset
		end

	metadata: POINTER
			-- Access member `metadata`
		require
			exists: exists
		do
			Result := c_metadata (item)
		ensure
			result_correct: Result = c_metadata (item)
		end

	set_metadata (a_value: POINTER) 
			-- Change the value of member `metadata` to `a_value`.
		require
			exists: exists
		do
			set_c_metadata (item, a_value)
		ensure
			metadata_set: a_value = metadata
		end

	metadata_size: NATURAL
			-- Access member `metadata_size`
		require
			exists: exists
		do
			Result := c_metadata_size (item)
		ensure
			result_correct: Result = c_metadata_size (item)
		end

	set_metadata_size (a_value: NATURAL) 
			-- Change the value of member `metadata_size` to `a_value`.
		require
			exists: exists
		do
			set_c_metadata_size (item, a_value)
		ensure
			metadata_size_set: a_value = metadata_size
		end

	opaque: POINTER
			-- Access member `opaque`
		require
			exists: exists
		do
			Result := c_opaque (item)
		ensure
			result_correct: Result = c_opaque (item)
		end

	set_opaque (a_value: POINTER) 
			-- Change the value of member `opaque` to `a_value`.
		require
			exists: exists
		do
			set_c_opaque (item, a_value)
		ensure
			opaque_set: a_value = opaque
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

	private: POINTER
			-- Access member `_private`
		require
			exists: exists
		do
			Result := c_private (item)
		ensure
			result_correct: Result = c_private (item)
		end

	set_private (a_value: POINTER) 
			-- Change the value of member `_private` to `a_value`.
		require
			exists: exists
		do
			set_c_private (item, a_value)
		ensure
			private_set: a_value = private
		end

feature {NONE} -- Implementation wrapper for struct struct rd_kafka_topic_partition_s

	sizeof_external: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"sizeof(struct rd_kafka_topic_partition_s)"
		end

	c_topic (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_topic_partition_s*)$an_item)->topic
			]"
		end

	set_c_topic (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_topic_partition_s*)$an_item)->topic =  (char*)$a_value
			]"
		ensure
			topic_set: a_value = c_topic (an_item)
		end

	c_partition (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_topic_partition_s*)$an_item)->partition
			]"
		end

	set_c_partition (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_topic_partition_s*)$an_item)->partition =  (int32_t)$a_value
			]"
		ensure
			partition_set: a_value = c_partition (an_item)
		end

	c_offset (an_item: POINTER): INTEGER_64
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_topic_partition_s*)$an_item)->offset
			]"
		end

	set_c_offset (an_item: POINTER; a_value: INTEGER_64) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_topic_partition_s*)$an_item)->offset =  (int64_t)$a_value
			]"
		ensure
			offset_set: a_value = c_offset (an_item)
		end

	c_metadata (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_topic_partition_s*)$an_item)->metadata
			]"
		end

	set_c_metadata (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_topic_partition_s*)$an_item)->metadata =  (void*)$a_value
			]"
		ensure
			metadata_set: a_value = c_metadata (an_item)
		end

	c_metadata_size (an_item: POINTER): NATURAL
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_topic_partition_s*)$an_item)->metadata_size
			]"
		end

	set_c_metadata_size (an_item: POINTER; a_value: NATURAL) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_topic_partition_s*)$an_item)->metadata_size =  (size_t)$a_value
			]"
		ensure
			metadata_size_set: a_value = c_metadata_size (an_item)
		end

	c_opaque (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_topic_partition_s*)$an_item)->opaque
			]"
		end

	set_c_opaque (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_topic_partition_s*)$an_item)->opaque =  (void*)$a_value
			]"
		ensure
			opaque_set: a_value = c_opaque (an_item)
		end

	c_err (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_topic_partition_s*)$an_item)->err
			]"
		end

	set_c_err (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_topic_partition_s*)$an_item)->err =  (rd_kafka_resp_err_t)$a_value
			]"
		ensure
			err_set: a_value = c_err (an_item)
		end

	c_private (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_topic_partition_s*)$an_item)->_private
			]"
		end

	set_c_private (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_topic_partition_s*)$an_item)->_private =  (void*)$a_value
			]"
		ensure
			private_set: a_value = c_private (an_item)
		end

end