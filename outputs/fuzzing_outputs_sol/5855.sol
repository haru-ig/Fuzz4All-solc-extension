pragma solidity ^0.8.0;
contract MovedSemantics {
    uint[] a;
    mapping(uint => uint) b;
    bool[] c;
    mapping(uint => bytes4) d;
    uint x[10]{ x_x_x_ };
    function test() public {
        a = a;
        a = a; a = a;
    }
}
