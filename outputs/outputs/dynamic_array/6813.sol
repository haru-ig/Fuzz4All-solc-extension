pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics4 is T34_call_data_array_semantics3 {
    address[] public owner;
    T34_call_data_array_semantics3.TestCase[]  public test;
    mapping(uint256 => T34_call_data_array_semantics3.TestCase) public test2;
    function addTest(uint256 a, bytes memory b) public {
        T34_call_data_array_semantics3.TestCase memory t;
        t.b = b;
        t.a = a;
        test2[a] = t;
    }

}
