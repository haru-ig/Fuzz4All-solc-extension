pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics4 {

    T34_call_data_array_semantics4_old.TestCase[] public a;

    function add() public {

        a.push(T34_call_data_array_semantics4_old.TestCase({}));
    }

    function test() public {


        a.push(T34_call_data_array_semantics4_old.TestCase({b: bytes20("b0"), a: 1}));


        T34_call_data_array_semantics4_old.TestCase b_first;
        b_first.b = bytes20("b1");
        b_first.a = 2;
        a.push(b_first);


        T34_call_data_array_semantics4_old.TestCase c_first;
        c_first.a = 6;
        c_first.b = bytes20("b3");
        a.push(c_first);


        a.push(T34_call_data_array_semantics4_old.TestCase({a: 3}));


        assembly {


            0xc0
            mstore(0x40, mload(0x40))
            mstore32(0x40, 2)

            0xa1
            0x34
            a3
            ake162
