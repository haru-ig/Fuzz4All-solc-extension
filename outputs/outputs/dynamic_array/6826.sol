pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics5 is T34_call_data_array_semantics4 {
    uint256[] public a;
    address[] public b;
    mapping (uint256 => uint256) public d;
    mapping (uint256 => bytes20) public e;
    T34_call_data_array_semantics4.TestCase[] public f;
    function T34_call_data_array_semantics4.Emit1(uint256 a) public emit Emit1(a) {}
    function T34_call_data_array_semantics4.Emit3(uint256 a) public emit Emit3(a) {}
    function T34_call_data_array_semantics4.Emit0(uint256 a) public emit Emit0(a) {}
    function T34_call_data_array_semantics4.Emit2(uint256 a) public emit Emit2(a) {}
    constructor() public {
        for (uint256 i=0; i<5; i++) {
            a.push(i);
            d[i] = i;
            e[i] = bytes20(i);
        }
    }
}
