note

	description: "This file has been generated by WrapC. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class RD_KAFKA_GROUP_INFO_STRUCT_API

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

	broker: RD_KAFKA_METADATA_BROKER_STRUCT_API
			-- Access member `broker`
		require
			exists: exists
		do
			create Result.make_by_pointer ( c_broker(item) )
		ensure
			result_not_void: Result.item = c_broker (item) 
		end

	set_broker (a_value: RD_KAFKA_METADATA_BROKER_STRUCT_API) 
			-- Set member `broker`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_broker (item, a_value.item)
		ensure
			broker_set: broker.item = a_value.item
		end

	group:  detachable C_STRING
			-- Access member `group`
		require
			exists: exists
		do
			if attached c_group (item) as l_ptr then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_group (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.string.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_group (a_value: C_STRING) 
			-- Change the value of member `group` to `a_value`.
		require
			exists: exists
		do
			set_c_group (item, a_value.item )
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

	state:  detachable C_STRING
			-- Access member `state`
		require
			exists: exists
		do
			if attached c_state (item) as l_ptr then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_state (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.string.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_state (a_value: C_STRING) 
			-- Change the value of member `state` to `a_value`.
		require
			exists: exists
		do
			set_c_state (item, a_value.item )
		end

	protocol_type:  detachable C_STRING
			-- Access member `protocol_type`
		require
			exists: exists
		do
			if attached c_protocol_type (item) as l_ptr then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_protocol_type (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.string.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_protocol_type (a_value: C_STRING) 
			-- Change the value of member `protocol_type` to `a_value`.
		require
			exists: exists
		do
			set_c_protocol_type (item, a_value.item )
		end

	protocol:  detachable C_STRING
			-- Access member `protocol`
		require
			exists: exists
		do
			if attached c_protocol (item) as l_ptr then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_protocol (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.string.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_protocol (a_value: C_STRING) 
			-- Change the value of member `protocol` to `a_value`.
		require
			exists: exists
		do
			set_c_protocol (item, a_value.item )
		end

	members: detachable RD_KAFKA_GROUP_MEMBER_INFO_STRUCT_API 
			-- Access member `members`
		require
			exists: exists
		do
			if attached c_members (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_members (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_members (item) 
		end

	set_members (a_value: RD_KAFKA_GROUP_MEMBER_INFO_STRUCT_API) 
			-- Set member `members`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_members (item, a_value.item)
		ensure
			members_set: attached members as l_value implies l_value.item = a_value.item
		end

	member_cnt: INTEGER
			-- Access member `member_cnt`
		require
			exists: exists
		do
			Result := c_member_cnt (item)
		ensure
			result_correct: Result = c_member_cnt (item)
		end

	set_member_cnt (a_value: INTEGER) 
			-- Change the value of member `member_cnt` to `a_value`.
		require
			exists: exists
		do
			set_c_member_cnt (item, a_value)
		ensure
			member_cnt_set: a_value = member_cnt
		end

feature {NONE} -- Implementation wrapper for struct struct rd_kafka_group_info

	sizeof_external: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"sizeof(struct rd_kafka_group_info)"
		end

	c_broker (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				&((struct rd_kafka_group_info*)$an_item)->broker
			]"
		end

	set_c_broker (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_group_info*)$an_item)->broker =  *(struct rd_kafka_metadata_broker*)$a_value
			]"
		end

	c_group (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_group_info*)$an_item)->group
			]"
		end

	set_c_group (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_group_info*)$an_item)->group =  (char*)$a_value
			]"
		ensure
			group_set: a_value = c_group (an_item)
		end

	c_err (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_group_info*)$an_item)->err
			]"
		end

	set_c_err (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_group_info*)$an_item)->err =  (rd_kafka_resp_err_t)$a_value
			]"
		ensure
			err_set: a_value = c_err (an_item)
		end

	c_state (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_group_info*)$an_item)->state
			]"
		end

	set_c_state (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_group_info*)$an_item)->state =  (char*)$a_value
			]"
		ensure
			state_set: a_value = c_state (an_item)
		end

	c_protocol_type (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_group_info*)$an_item)->protocol_type
			]"
		end

	set_c_protocol_type (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_group_info*)$an_item)->protocol_type =  (char*)$a_value
			]"
		ensure
			protocol_type_set: a_value = c_protocol_type (an_item)
		end

	c_protocol (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_group_info*)$an_item)->protocol
			]"
		end

	set_c_protocol (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_group_info*)$an_item)->protocol =  (char*)$a_value
			]"
		ensure
			protocol_set: a_value = c_protocol (an_item)
		end

	c_members (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_group_info*)$an_item)->members
			]"
		end

	set_c_members (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_group_info*)$an_item)->members =  (struct rd_kafka_group_member_info*)$a_value
			]"
		ensure
			members_set: a_value = c_members (an_item)
		end

	c_member_cnt (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_group_info*)$an_item)->member_cnt
			]"
		end

	set_c_member_cnt (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <rdkafka.h>"
		alias
			"[
				((struct rd_kafka_group_info*)$an_item)->member_cnt =  (int)$a_value
			]"
		ensure
			member_cnt_set: a_value = c_member_cnt (an_item)
		end

end