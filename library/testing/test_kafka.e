note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_KAFKA

inherit
	EQA_TEST_SET

feature -- Test routines

	test_version
			-- New test routine
		local
			l_str: STRING
			l_integer: INTEGER
		do
			l_str := (create {C_STRING}.make_by_pointer ({RDKAFKA_FUNCTIONS_API}.rd_kafka_version_str)).string
			assert ("Expect Not Empty", not l_str.is_empty)
			l_integer := {RDKAFKA_FUNCTIONS_API}.rd_kafka_version
		end

end


