pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentMutatedArrowsModulation
{
    uint[] public s_x;
    mapping(uint => uint) public s_y;
    uint[] public s_zero_x;
    mapping(uint => uint) public s_zero_y;
    uint[] public s_one;
    mapping(uint => uint) public s_two;
    uint[] public s_full_x;
    mapping(uint => uint) public s_full_y;
    uint[] public s_partial_x;
    mapping(uint => uint) public s_partial_y;
    uint t;
    address[] public s_address;
    constructor () public {
        t = address(0xE4F7DC498E9829DDF9257081AEE6F7A4C2141763);
    }
        function m() public pure {
        return t;
    }
    function q() public pure {
        emit C(t_0);
    }
    function r() public view returns (address[] memory) {
        return s_address;
    }
    function s() public pure {
    s_address = new address[](3);
    s_address[0] = t_1;
    uint x = _a;
    s_address[2] = _a;
    s_x = new uint[](2);
    s_x[0] = 0;
    s_x[1] = 1;
    s_y = new mapping(uint => uint)(2);
    s_y[0] = 0;
    s_y[1] = 0;
    s_zero_x = new uint[](0);
    s_zero_y = new mapping(uint => uint)();
    s_one = new uint[](1);
    s_one[0] = 1;
    s_two = new mapping(uint => uint)(2);
    s_two[0] = 0;
    s_two[1] = 0;
    s_full_x = new uint[](2);
    s_full_x[0] = 0x0101010101010101;
    s_full_x[1] = 0x0101010101010101;
    s_full_y =
