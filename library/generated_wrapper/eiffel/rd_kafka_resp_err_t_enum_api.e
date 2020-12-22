-- enum wrapper
class RD_KAFKA_RESP_ERR_T_ENUM_API

feature {ANY}

	is_valid_enum (a_value: INTEGER): BOOLEAN 
			-- Is `a_value' a valid integer code for this enum ?
		do
			Result := a_value = rd_kafka_resp_err__begin or a_value = rd_kafka_resp_err__bad_msg or a_value = rd_kafka_resp_err__bad_compression or a_value = rd_kafka_resp_err__destroy or a_value = rd_kafka_resp_err__fail or a_value = rd_kafka_resp_err__transport or a_value = rd_kafka_resp_err__crit_sys_resource or a_value = rd_kafka_resp_err__resolve or a_value = rd_kafka_resp_err__msg_timed_out or a_value = rd_kafka_resp_err__partition_eof or a_value = rd_kafka_resp_err__unknown_partition or a_value = rd_kafka_resp_err__fs or a_value = rd_kafka_resp_err__unknown_topic or a_value = rd_kafka_resp_err__all_brokers_down or a_value = rd_kafka_resp_err__invalid_arg or a_value = rd_kafka_resp_err__timed_out or a_value = rd_kafka_resp_err__queue_full or a_value = rd_kafka_resp_err__isr_insuff or a_value = rd_kafka_resp_err__node_update or a_value = rd_kafka_resp_err__ssl or a_value = rd_kafka_resp_err__wait_coord or a_value = rd_kafka_resp_err__unknown_group or a_value = rd_kafka_resp_err__in_progress or a_value = rd_kafka_resp_err__prev_in_progress or a_value = rd_kafka_resp_err__existing_subscription or a_value = rd_kafka_resp_err__assign_partitions or a_value = rd_kafka_resp_err__revoke_partitions or a_value = rd_kafka_resp_err__conflict or a_value = rd_kafka_resp_err__state or a_value = rd_kafka_resp_err__unknown_protocol or a_value = rd_kafka_resp_err__not_implemented or a_value = rd_kafka_resp_err__authentication or a_value = rd_kafka_resp_err__no_offset or a_value = rd_kafka_resp_err__outdated or a_value = rd_kafka_resp_err__timed_out_queue or a_value = rd_kafka_resp_err__unsupported_feature or a_value = rd_kafka_resp_err__wait_cache or a_value = rd_kafka_resp_err__intr or a_value = rd_kafka_resp_err__key_serialization or a_value = rd_kafka_resp_err__value_serialization or a_value = rd_kafka_resp_err__key_deserialization or a_value = rd_kafka_resp_err__value_deserialization or a_value = rd_kafka_resp_err__partial or a_value = rd_kafka_resp_err__read_only or a_value = rd_kafka_resp_err__noent or a_value = rd_kafka_resp_err__underflow or a_value = rd_kafka_resp_err__invalid_type or a_value = rd_kafka_resp_err__retry or a_value = rd_kafka_resp_err__purge_queue or a_value = rd_kafka_resp_err__purge_inflight or a_value = rd_kafka_resp_err__fatal or a_value = rd_kafka_resp_err__inconsistent or a_value = rd_kafka_resp_err__gapless_guarantee or a_value = rd_kafka_resp_err__max_poll_exceeded or a_value = rd_kafka_resp_err__unknown_broker or a_value = rd_kafka_resp_err__not_configured or a_value = rd_kafka_resp_err__fenced or a_value = rd_kafka_resp_err__application or a_value = rd_kafka_resp_err__end or a_value = rd_kafka_resp_err_unknown or a_value = rd_kafka_resp_err_no_error or a_value = rd_kafka_resp_err_offset_out_of_range or a_value = rd_kafka_resp_err_invalid_msg or a_value = rd_kafka_resp_err_unknown_topic_or_part or a_value = rd_kafka_resp_err_invalid_msg_size or a_value = rd_kafka_resp_err_leader_not_available or a_value = rd_kafka_resp_err_not_leader_for_partition or a_value = rd_kafka_resp_err_request_timed_out or a_value = rd_kafka_resp_err_broker_not_available or a_value = rd_kafka_resp_err_replica_not_available or a_value = rd_kafka_resp_err_msg_size_too_large or a_value = rd_kafka_resp_err_stale_ctrl_epoch or a_value = rd_kafka_resp_err_offset_metadata_too_large or a_value = rd_kafka_resp_err_network_exception or a_value = rd_kafka_resp_err_coordinator_load_in_progress or a_value = rd_kafka_resp_err_coordinator_not_available or a_value = rd_kafka_resp_err_not_coordinator or a_value = rd_kafka_resp_err_topic_exception or a_value = rd_kafka_resp_err_record_list_too_large or a_value = rd_kafka_resp_err_not_enough_replicas or a_value = rd_kafka_resp_err_not_enough_replicas_after_append or a_value = rd_kafka_resp_err_invalid_required_acks or a_value = rd_kafka_resp_err_illegal_generation or a_value = rd_kafka_resp_err_inconsistent_group_protocol or a_value = rd_kafka_resp_err_invalid_group_id or a_value = rd_kafka_resp_err_unknown_member_id or a_value = rd_kafka_resp_err_invalid_session_timeout or a_value = rd_kafka_resp_err_rebalance_in_progress or a_value = rd_kafka_resp_err_invalid_commit_offset_size or a_value = rd_kafka_resp_err_topic_authorization_failed or a_value = rd_kafka_resp_err_group_authorization_failed or a_value = rd_kafka_resp_err_cluster_authorization_failed or a_value = rd_kafka_resp_err_invalid_timestamp or a_value = rd_kafka_resp_err_unsupported_sasl_mechanism or a_value = rd_kafka_resp_err_illegal_sasl_state or a_value = rd_kafka_resp_err_unsupported_version or a_value = rd_kafka_resp_err_topic_already_exists or a_value = rd_kafka_resp_err_invalid_partitions or a_value = rd_kafka_resp_err_invalid_replication_factor or a_value = rd_kafka_resp_err_invalid_replica_assignment or a_value = rd_kafka_resp_err_invalid_config or a_value = rd_kafka_resp_err_not_controller or a_value = rd_kafka_resp_err_invalid_request or a_value = rd_kafka_resp_err_unsupported_for_message_format or a_value = rd_kafka_resp_err_policy_violation or a_value = rd_kafka_resp_err_out_of_order_sequence_number or a_value = rd_kafka_resp_err_duplicate_sequence_number or a_value = rd_kafka_resp_err_invalid_producer_epoch or a_value = rd_kafka_resp_err_invalid_txn_state or a_value = rd_kafka_resp_err_invalid_producer_id_mapping or a_value = rd_kafka_resp_err_invalid_transaction_timeout or a_value = rd_kafka_resp_err_concurrent_transactions or a_value = rd_kafka_resp_err_transaction_coordinator_fenced or a_value = rd_kafka_resp_err_transactional_id_authorization_failed or a_value = rd_kafka_resp_err_security_disabled or a_value = rd_kafka_resp_err_operation_not_attempted or a_value = rd_kafka_resp_err_kafka_storage_error or a_value = rd_kafka_resp_err_log_dir_not_found or a_value = rd_kafka_resp_err_sasl_authentication_failed or a_value = rd_kafka_resp_err_unknown_producer_id or a_value = rd_kafka_resp_err_reassignment_in_progress or a_value = rd_kafka_resp_err_delegation_token_auth_disabled or a_value = rd_kafka_resp_err_delegation_token_not_found or a_value = rd_kafka_resp_err_delegation_token_owner_mismatch or a_value = rd_kafka_resp_err_delegation_token_request_not_allowed or a_value = rd_kafka_resp_err_delegation_token_authorization_failed or a_value = rd_kafka_resp_err_delegation_token_expired or a_value = rd_kafka_resp_err_invalid_principal_type or a_value = rd_kafka_resp_err_non_empty_group or a_value = rd_kafka_resp_err_group_id_not_found or a_value = rd_kafka_resp_err_fetch_session_id_not_found or a_value = rd_kafka_resp_err_invalid_fetch_session_epoch or a_value = rd_kafka_resp_err_listener_not_found or a_value = rd_kafka_resp_err_topic_deletion_disabled or a_value = rd_kafka_resp_err_fenced_leader_epoch or a_value = rd_kafka_resp_err_unknown_leader_epoch or a_value = rd_kafka_resp_err_unsupported_compression_type or a_value = rd_kafka_resp_err_stale_broker_epoch or a_value = rd_kafka_resp_err_offset_not_available or a_value = rd_kafka_resp_err_member_id_required or a_value = rd_kafka_resp_err_preferred_leader_not_available or a_value = rd_kafka_resp_err_group_max_size_reached or a_value = rd_kafka_resp_err_fenced_instance_id or a_value = rd_kafka_resp_err_end_all
		end

	rd_kafka_resp_err__begin: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__BEGIN"
		end

	rd_kafka_resp_err__bad_msg: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__BAD_MSG"
		end

	rd_kafka_resp_err__bad_compression: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__BAD_COMPRESSION"
		end

	rd_kafka_resp_err__destroy: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__DESTROY"
		end

	rd_kafka_resp_err__fail: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__FAIL"
		end

	rd_kafka_resp_err__transport: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__TRANSPORT"
		end

	rd_kafka_resp_err__crit_sys_resource: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__CRIT_SYS_RESOURCE"
		end

	rd_kafka_resp_err__resolve: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__RESOLVE"
		end

	rd_kafka_resp_err__msg_timed_out: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__MSG_TIMED_OUT"
		end

	rd_kafka_resp_err__partition_eof: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__PARTITION_EOF"
		end

	rd_kafka_resp_err__unknown_partition: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__UNKNOWN_PARTITION"
		end

	rd_kafka_resp_err__fs: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__FS"
		end

	rd_kafka_resp_err__unknown_topic: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__UNKNOWN_TOPIC"
		end

	rd_kafka_resp_err__all_brokers_down: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__ALL_BROKERS_DOWN"
		end

	rd_kafka_resp_err__invalid_arg: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__INVALID_ARG"
		end

	rd_kafka_resp_err__timed_out: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__TIMED_OUT"
		end

	rd_kafka_resp_err__queue_full: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__QUEUE_FULL"
		end

	rd_kafka_resp_err__isr_insuff: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__ISR_INSUFF"
		end

	rd_kafka_resp_err__node_update: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__NODE_UPDATE"
		end

	rd_kafka_resp_err__ssl: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__SSL"
		end

	rd_kafka_resp_err__wait_coord: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__WAIT_COORD"
		end

	rd_kafka_resp_err__unknown_group: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__UNKNOWN_GROUP"
		end

	rd_kafka_resp_err__in_progress: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__IN_PROGRESS"
		end

	rd_kafka_resp_err__prev_in_progress: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__PREV_IN_PROGRESS"
		end

	rd_kafka_resp_err__existing_subscription: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__EXISTING_SUBSCRIPTION"
		end

	rd_kafka_resp_err__assign_partitions: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__ASSIGN_PARTITIONS"
		end

	rd_kafka_resp_err__revoke_partitions: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__REVOKE_PARTITIONS"
		end

	rd_kafka_resp_err__conflict: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__CONFLICT"
		end

	rd_kafka_resp_err__state: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__STATE"
		end

	rd_kafka_resp_err__unknown_protocol: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__UNKNOWN_PROTOCOL"
		end

	rd_kafka_resp_err__not_implemented: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__NOT_IMPLEMENTED"
		end

	rd_kafka_resp_err__authentication: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__AUTHENTICATION"
		end

	rd_kafka_resp_err__no_offset: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__NO_OFFSET"
		end

	rd_kafka_resp_err__outdated: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__OUTDATED"
		end

	rd_kafka_resp_err__timed_out_queue: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__TIMED_OUT_QUEUE"
		end

	rd_kafka_resp_err__unsupported_feature: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__UNSUPPORTED_FEATURE"
		end

	rd_kafka_resp_err__wait_cache: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__WAIT_CACHE"
		end

	rd_kafka_resp_err__intr: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__INTR"
		end

	rd_kafka_resp_err__key_serialization: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__KEY_SERIALIZATION"
		end

	rd_kafka_resp_err__value_serialization: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__VALUE_SERIALIZATION"
		end

	rd_kafka_resp_err__key_deserialization: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__KEY_DESERIALIZATION"
		end

	rd_kafka_resp_err__value_deserialization: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__VALUE_DESERIALIZATION"
		end

	rd_kafka_resp_err__partial: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__PARTIAL"
		end

	rd_kafka_resp_err__read_only: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__READ_ONLY"
		end

	rd_kafka_resp_err__noent: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__NOENT"
		end

	rd_kafka_resp_err__underflow: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__UNDERFLOW"
		end

	rd_kafka_resp_err__invalid_type: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__INVALID_TYPE"
		end

	rd_kafka_resp_err__retry: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__RETRY"
		end

	rd_kafka_resp_err__purge_queue: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__PURGE_QUEUE"
		end

	rd_kafka_resp_err__purge_inflight: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__PURGE_INFLIGHT"
		end

	rd_kafka_resp_err__fatal: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__FATAL"
		end

	rd_kafka_resp_err__inconsistent: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__INCONSISTENT"
		end

	rd_kafka_resp_err__gapless_guarantee: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__GAPLESS_GUARANTEE"
		end

	rd_kafka_resp_err__max_poll_exceeded: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__MAX_POLL_EXCEEDED"
		end

	rd_kafka_resp_err__unknown_broker: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__UNKNOWN_BROKER"
		end

	rd_kafka_resp_err__not_configured: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__NOT_CONFIGURED"
		end

	rd_kafka_resp_err__fenced: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__FENCED"
		end

	rd_kafka_resp_err__application: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__APPLICATION"
		end

	rd_kafka_resp_err__end: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR__END"
		end

	rd_kafka_resp_err_unknown: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_UNKNOWN"
		end

	rd_kafka_resp_err_no_error: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_NO_ERROR"
		end

	rd_kafka_resp_err_offset_out_of_range: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_OFFSET_OUT_OF_RANGE"
		end

	rd_kafka_resp_err_invalid_msg: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INVALID_MSG"
		end

	rd_kafka_resp_err_unknown_topic_or_part: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_UNKNOWN_TOPIC_OR_PART"
		end

	rd_kafka_resp_err_invalid_msg_size: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INVALID_MSG_SIZE"
		end

	rd_kafka_resp_err_leader_not_available: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_LEADER_NOT_AVAILABLE"
		end

	rd_kafka_resp_err_not_leader_for_partition: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_NOT_LEADER_FOR_PARTITION"
		end

	rd_kafka_resp_err_request_timed_out: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_REQUEST_TIMED_OUT"
		end

	rd_kafka_resp_err_broker_not_available: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_BROKER_NOT_AVAILABLE"
		end

	rd_kafka_resp_err_replica_not_available: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_REPLICA_NOT_AVAILABLE"
		end

	rd_kafka_resp_err_msg_size_too_large: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_MSG_SIZE_TOO_LARGE"
		end

	rd_kafka_resp_err_stale_ctrl_epoch: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_STALE_CTRL_EPOCH"
		end

	rd_kafka_resp_err_offset_metadata_too_large: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_OFFSET_METADATA_TOO_LARGE"
		end

	rd_kafka_resp_err_network_exception: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_NETWORK_EXCEPTION"
		end

	rd_kafka_resp_err_coordinator_load_in_progress: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_COORDINATOR_LOAD_IN_PROGRESS"
		end

	rd_kafka_resp_err_coordinator_not_available: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_COORDINATOR_NOT_AVAILABLE"
		end

	rd_kafka_resp_err_not_coordinator: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_NOT_COORDINATOR"
		end

	rd_kafka_resp_err_topic_exception: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_TOPIC_EXCEPTION"
		end

	rd_kafka_resp_err_record_list_too_large: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_RECORD_LIST_TOO_LARGE"
		end

	rd_kafka_resp_err_not_enough_replicas: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_NOT_ENOUGH_REPLICAS"
		end

	rd_kafka_resp_err_not_enough_replicas_after_append: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_NOT_ENOUGH_REPLICAS_AFTER_APPEND"
		end

	rd_kafka_resp_err_invalid_required_acks: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INVALID_REQUIRED_ACKS"
		end

	rd_kafka_resp_err_illegal_generation: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_ILLEGAL_GENERATION"
		end

	rd_kafka_resp_err_inconsistent_group_protocol: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INCONSISTENT_GROUP_PROTOCOL"
		end

	rd_kafka_resp_err_invalid_group_id: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INVALID_GROUP_ID"
		end

	rd_kafka_resp_err_unknown_member_id: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_UNKNOWN_MEMBER_ID"
		end

	rd_kafka_resp_err_invalid_session_timeout: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INVALID_SESSION_TIMEOUT"
		end

	rd_kafka_resp_err_rebalance_in_progress: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_REBALANCE_IN_PROGRESS"
		end

	rd_kafka_resp_err_invalid_commit_offset_size: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INVALID_COMMIT_OFFSET_SIZE"
		end

	rd_kafka_resp_err_topic_authorization_failed: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_TOPIC_AUTHORIZATION_FAILED"
		end

	rd_kafka_resp_err_group_authorization_failed: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_GROUP_AUTHORIZATION_FAILED"
		end

	rd_kafka_resp_err_cluster_authorization_failed: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_CLUSTER_AUTHORIZATION_FAILED"
		end

	rd_kafka_resp_err_invalid_timestamp: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INVALID_TIMESTAMP"
		end

	rd_kafka_resp_err_unsupported_sasl_mechanism: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_UNSUPPORTED_SASL_MECHANISM"
		end

	rd_kafka_resp_err_illegal_sasl_state: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_ILLEGAL_SASL_STATE"
		end

	rd_kafka_resp_err_unsupported_version: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_UNSUPPORTED_VERSION"
		end

	rd_kafka_resp_err_topic_already_exists: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_TOPIC_ALREADY_EXISTS"
		end

	rd_kafka_resp_err_invalid_partitions: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INVALID_PARTITIONS"
		end

	rd_kafka_resp_err_invalid_replication_factor: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INVALID_REPLICATION_FACTOR"
		end

	rd_kafka_resp_err_invalid_replica_assignment: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INVALID_REPLICA_ASSIGNMENT"
		end

	rd_kafka_resp_err_invalid_config: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INVALID_CONFIG"
		end

	rd_kafka_resp_err_not_controller: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_NOT_CONTROLLER"
		end

	rd_kafka_resp_err_invalid_request: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INVALID_REQUEST"
		end

	rd_kafka_resp_err_unsupported_for_message_format: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_UNSUPPORTED_FOR_MESSAGE_FORMAT"
		end

	rd_kafka_resp_err_policy_violation: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_POLICY_VIOLATION"
		end

	rd_kafka_resp_err_out_of_order_sequence_number: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_OUT_OF_ORDER_SEQUENCE_NUMBER"
		end

	rd_kafka_resp_err_duplicate_sequence_number: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_DUPLICATE_SEQUENCE_NUMBER"
		end

	rd_kafka_resp_err_invalid_producer_epoch: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INVALID_PRODUCER_EPOCH"
		end

	rd_kafka_resp_err_invalid_txn_state: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INVALID_TXN_STATE"
		end

	rd_kafka_resp_err_invalid_producer_id_mapping: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INVALID_PRODUCER_ID_MAPPING"
		end

	rd_kafka_resp_err_invalid_transaction_timeout: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INVALID_TRANSACTION_TIMEOUT"
		end

	rd_kafka_resp_err_concurrent_transactions: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_CONCURRENT_TRANSACTIONS"
		end

	rd_kafka_resp_err_transaction_coordinator_fenced: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_TRANSACTION_COORDINATOR_FENCED"
		end

	rd_kafka_resp_err_transactional_id_authorization_failed: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_TRANSACTIONAL_ID_AUTHORIZATION_FAILED"
		end

	rd_kafka_resp_err_security_disabled: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_SECURITY_DISABLED"
		end

	rd_kafka_resp_err_operation_not_attempted: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_OPERATION_NOT_ATTEMPTED"
		end

	rd_kafka_resp_err_kafka_storage_error: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_KAFKA_STORAGE_ERROR"
		end

	rd_kafka_resp_err_log_dir_not_found: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_LOG_DIR_NOT_FOUND"
		end

	rd_kafka_resp_err_sasl_authentication_failed: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_SASL_AUTHENTICATION_FAILED"
		end

	rd_kafka_resp_err_unknown_producer_id: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_UNKNOWN_PRODUCER_ID"
		end

	rd_kafka_resp_err_reassignment_in_progress: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_REASSIGNMENT_IN_PROGRESS"
		end

	rd_kafka_resp_err_delegation_token_auth_disabled: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_DELEGATION_TOKEN_AUTH_DISABLED"
		end

	rd_kafka_resp_err_delegation_token_not_found: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_DELEGATION_TOKEN_NOT_FOUND"
		end

	rd_kafka_resp_err_delegation_token_owner_mismatch: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_DELEGATION_TOKEN_OWNER_MISMATCH"
		end

	rd_kafka_resp_err_delegation_token_request_not_allowed: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_DELEGATION_TOKEN_REQUEST_NOT_ALLOWED"
		end

	rd_kafka_resp_err_delegation_token_authorization_failed: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_DELEGATION_TOKEN_AUTHORIZATION_FAILED"
		end

	rd_kafka_resp_err_delegation_token_expired: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_DELEGATION_TOKEN_EXPIRED"
		end

	rd_kafka_resp_err_invalid_principal_type: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INVALID_PRINCIPAL_TYPE"
		end

	rd_kafka_resp_err_non_empty_group: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_NON_EMPTY_GROUP"
		end

	rd_kafka_resp_err_group_id_not_found: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_GROUP_ID_NOT_FOUND"
		end

	rd_kafka_resp_err_fetch_session_id_not_found: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_FETCH_SESSION_ID_NOT_FOUND"
		end

	rd_kafka_resp_err_invalid_fetch_session_epoch: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_INVALID_FETCH_SESSION_EPOCH"
		end

	rd_kafka_resp_err_listener_not_found: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_LISTENER_NOT_FOUND"
		end

	rd_kafka_resp_err_topic_deletion_disabled: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_TOPIC_DELETION_DISABLED"
		end

	rd_kafka_resp_err_fenced_leader_epoch: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_FENCED_LEADER_EPOCH"
		end

	rd_kafka_resp_err_unknown_leader_epoch: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_UNKNOWN_LEADER_EPOCH"
		end

	rd_kafka_resp_err_unsupported_compression_type: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_UNSUPPORTED_COMPRESSION_TYPE"
		end

	rd_kafka_resp_err_stale_broker_epoch: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_STALE_BROKER_EPOCH"
		end

	rd_kafka_resp_err_offset_not_available: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_OFFSET_NOT_AVAILABLE"
		end

	rd_kafka_resp_err_member_id_required: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_MEMBER_ID_REQUIRED"
		end

	rd_kafka_resp_err_preferred_leader_not_available: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_PREFERRED_LEADER_NOT_AVAILABLE"
		end

	rd_kafka_resp_err_group_max_size_reached: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_GROUP_MAX_SIZE_REACHED"
		end

	rd_kafka_resp_err_fenced_instance_id: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_FENCED_INSTANCE_ID"
		end

	rd_kafka_resp_err_end_all: INTEGER 
		external
			"C inline use <rdkafka.h>"
		alias
			"RD_KAFKA_RESP_ERR_END_ALL"
		end

end
