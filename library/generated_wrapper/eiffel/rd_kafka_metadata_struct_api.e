note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class RD_KAFKA_METADATA_STRUCT_API

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

	broker_cnt: INTEGER
			-- Access member `broker_cnt`
		require
			exists: exists
		do
			Result := c_broker_cnt (item)
		ensure
			result_correct: Result = c_broker_cnt (item)
		end

	set_broker_cnt (a_value: INTEGER) 
			-- Change the value of member `broker_cnt` to `a_value`.
		require
			exists: exists
		do
			set_c_broker_cnt (item, a_value)
		ensure
			broker_cnt_set: a_value = broker_cnt
		end

	brokers: detachable RD_KAFKA_METADATA_BROKER_STRUCT_API 
			-- Access member `brokers`
		require
			exists: exists
		do
			if attached c_brokers (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_brokers (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_brokers (item) 
		end

	set_brokers (a_value: RD_KAFKA_METADATA_BROKER_STRUCT_API) 
			-- Set member `brokers`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_brokers (item, a_value.item)
		ensure
			brokers_set: attached brokers as l_value implies l_value.item = a_value.item
		end

	topic_cnt: INTEGER
			-- Access member `topic_cnt`
		require
			exists: exists
		do
			Result := c_topic_cnt (item)
		ensure
			result_correct: Result = c_topic_cnt (item)
		end

	set_topic_cnt (a_value: INTEGER) 
			-- Change the value of member `topic_cnt` to `a_value`.
		require
			exists: exists
		do
			set_c_topic_cnt (item, a_value)
		ensure
			topic_cnt_set: a_value = topic_cnt
		end

	topics: detachable RD_KAFKA_METADATA_TOPIC_STRUCT_API 
			-- Access member `topics`
		require
			exists: exists
		do
			if attached c_topics (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_topics (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_topics (item) 
		end

	set_topics (a_value: RD_KAFKA_METADATA_TOPIC_STRUCT_API) 
			-- Set member `topics`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_topics (item, a_value.item)
		ensure
			topics_set: attached topics as l_value implies l_value.item = a_value.item
		end

	orig_broker_id: INTEGER
			-- Access member `orig_broker_id`
		require
			exists: exists
		do
			Result := c_orig_broker_id (item)
		ensure
			result_correct: Result = c_orig_broker_id (item)
		end

	set_orig_broker_id (a_value: INTEGER) 
			-- Change the value of member `orig_broker_id` to `a_value`.
		require
			exists: exists
		do
			set_c_orig_broker_id (item, a_value)
		ensure
			orig_broker_id_set: a_value = orig_broker_id
		end

	orig_broker_name:  detachable C_STRING
			-- Access member `orig_broker_name`
		require
			exists: exists
		do
			if attached c_orig_broker_name (item) as l_ptr then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_orig_broker_name (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.string.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_orig_broker_name (a_value: C_STRING) 
			-- Change the value of member `orig_broker_name` to `a_value`.
		require
			exists: exists
		do
			set_c_orig_broker_name (item, a_value.item )
		end

feature {NONE} -- Implementation wrapper for struct struct rd_kafka_metadata

	sizeof_external: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"sizeof(struct rd_kafka_metadata)"
		end

	c_broker_cnt (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata*)$an_item)->broker_cnt
			]"
		end

	set_c_broker_cnt (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata*)$an_item)->broker_cnt =  (int)$a_value
			]"
		ensure
			broker_cnt_set: a_value = c_broker_cnt (an_item)
		end

	c_brokers (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata*)$an_item)->brokers
			]"
		end

	set_c_brokers (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata*)$an_item)->brokers =  (struct rd_kafka_metadata_broker*)$a_value
			]"
		ensure
			brokers_set: a_value = c_brokers (an_item)
		end

	c_topic_cnt (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata*)$an_item)->topic_cnt
			]"
		end

	set_c_topic_cnt (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata*)$an_item)->topic_cnt =  (int)$a_value
			]"
		ensure
			topic_cnt_set: a_value = c_topic_cnt (an_item)
		end

	c_topics (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata*)$an_item)->topics
			]"
		end

	set_c_topics (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata*)$an_item)->topics =  (struct rd_kafka_metadata_topic*)$a_value
			]"
		ensure
			topics_set: a_value = c_topics (an_item)
		end

	c_orig_broker_id (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata*)$an_item)->orig_broker_id
			]"
		end

	set_c_orig_broker_id (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata*)$an_item)->orig_broker_id =  (int32_t)$a_value
			]"
		ensure
			orig_broker_id_set: a_value = c_orig_broker_id (an_item)
		end

	c_orig_broker_name (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata*)$an_item)->orig_broker_name
			]"
		end

	set_c_orig_broker_name (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_metadata*)$an_item)->orig_broker_name =  (char*)$a_value
			]"
		ensure
			orig_broker_name_set: a_value = c_orig_broker_name (an_item)
		end

end
