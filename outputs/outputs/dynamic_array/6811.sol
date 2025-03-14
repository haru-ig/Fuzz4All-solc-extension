pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34a_call_data_array_semantics2 {
    struct TestCase { uint256 a; uint256 b; }
    function run(TestCase memory input) public {
        T34_call_data_array_semantics3.Emit0(input.a);
        T34_call_data_array_semantics3.Emit1(input.a);
        T34_call_data_array_semantics3.Emit2(input.a);
        T34_call_data_array_semantics3.Emit3(input.a);
    }

    function run1(TestCase memory input) public {
        T34_call_data_array_semantics3.Emit0(input.a);
        input.a = 0;
        input.b = bytes(0);
        T34_call_data_array_semantics3.Emit0(input.a);
        input.a = 1;
        input.b = bytes(1);
        T34_call_data_array_semantics3.Emit0(input.a);
        input.a = 2;
        input.b = bytes(2);
        T34_call_data_array_semantics3.Emit0(input.a);
        input.a = 3;
        input.b = bytes(3);
        T34_call_data_array_semantics3.Emit0(input.a);
    }

    function run2(TestCase memory input) public {
        T34_call_data_array_semantics3.Emit1(input.a);
        input.a = 0;
        input.b = bytes(0);
        T34_call_data_array_semantics3.Emit1(input.a);
        input.a = 1;
        input.b = bytes(1);
        T34_call_data_array_semantics3.Emit1(input.a);
        input.a = 2;
        input.b = bytes(2);
        T34_call_data_array_semantics3.Emit1(input.a);
        input.a = 3;
        input.b = bytes(3);
        T34_call_data_array_semantics3.Emit1(input.a);
    }

    function run3(TestCase memory input) public {
        T34_call_data_array
