pragma solidity ^0.8.0;

contract T34_call_data_array_semantics3_mutated_copy {
    bytes32 a0;
    bytes[] a1 = [
        '1',
        '2',
        '3',
        '4',
        '5'
    ];

    bytes(256) b0;
    constructor() { assembly { a0 := 0x600000006000000060000000600000006000000060000000600000006000000090000000900000006000000060000000600000006000000060000000704' } }
    function f_1() public {   T34_call_data_array_semantics3.Emit1(0); T34_call_data_array_semantics3.Emit1(1); }
    function f_2() public {   require(T34_call_data_array_semantics3.Emit2(0) == T34_call_data_array_semantics3.Emit2(0)); T34_call_data_array_semantics3.Emit2(1); }
    function f_3() public {   T34_call_data_array_semantics3.Emit0(0); T34_call_data_array_semantics3.Emit0(1); }
    function f_4() public {   T34_call_data_array_semantics3.Emit3(0); T34_call_data_array_semantics3.Emit3(1); }
    function f_5() public {
        if (a0 == T34_call_data_array_semantics3_mutated_copy.a0) {
            g_1
