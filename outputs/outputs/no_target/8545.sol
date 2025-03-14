pragma solidity ^0.8.0;
contract Equivalent1 {
    event Evt(address, uint, uint);
    event Evt2(uint a);
    function set1() public {
        a = 10;
        emit Evt(msg.sender, 10, 11551);
        emit Evt2(a);

    }
    uint public a;
    constructor() public {
        a = 100;
    }
}
library math{

    function mul(uint a, uint b) internal pure returns (uint c) {
        require(b == 0 || (a & b) == 0, "MATH: multiplication overflow");
        c = a * b;
        require(c / b == a, "MATH: multiplication underflow");
        return c;
    }
}
contract Equivalent2{
    event Evt(address, uint, uint);
    event Evt2(uint a);
    uint public a;
    constructor() public {
        a = 100;
    }
    function set2() public {
        uint b;
        b = 15;
        b = b + 12;
        uint c;
        a = b + 15 * a;
        c = math.mul(a, b);
        c
