pragma solidity ^0.8.0;
import "../contract/C.sol";
contract C {
    C internal c;
    uint internal m_x;
    function setX(uint _x) public{
        m_x = _x;
    }
    function x() public view returns(uint){
        return m_x;
    }
    function C() public{
    }
}

contract D{
    uint internal m_y;
    constructor() public{
        m_y = 0;
    }
    function y() public view returns(uint){
        return m_y;
    }
    function D() public{
    }
}
contract E is C, D{
    function setX(uint _x) public{
        m_x = _x;
    }
}

pragma solidity ^0.8.0;
contract C {
    uint public a;
    uint public b;
    constructor(uint _a, uint _b) public{
        a = _a;
        b = _b;
    }
}
contract D {
    uint public a;
    uint public b;
    constructor(uint _a, uint _b) public{
        a = _a;
        b = _b;
    }
    function sum() public view returns(uint){
        return a+b;
    }
}
contract E is C, D {
    constructor(uint _a, uint _b) public{
        a = _a;
        b = _b;
    }
    function sum() public view returns(uint){
        return a+b;
    }
}
contract A{
    address payable c;
    address payable c;
    constructor(address payable _c) public{
        c = _c;
    }
}
contract B is A{
    constructor(address payable _c) public{
        c = _c;
    }
    receive() external payable {}
}
contract C is B{
    constructor(address payable _c) public{
        c = _c;
    }
    function C() public{
    }
}
contract Main{
    uint public x;
    uint public y;
    bool public z;
    constructor() public{
        x = 4;
        y = 3;
        z = true;
    }
    function test() public {
        uint a = x + y + z;
        C c = C(address(this));
        c.setX(4);
        (uint80 fee
