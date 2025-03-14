pragma solidity ^0.8.0;
contract C {
    uint public constant max = 9223372036854775807;
    uint public x = 5;
    function setX(uint _x, uint _y) public {
        x = _x;
    }
    function getX(uint _x) public view returns (uint) {
        return x;
    }
    function test() public returns (uint) {
        uint a = getX(x);
        setX(x, 0);
        return getX(x);
    }
    function testb() public {
        uint a = getX(x);
        C.setX(x, a);
        uint b = C.getX(x);
        require(a == b);
    }
    constructor() {
        C.setX(x, 0);
        setX(x, 0);
    }
}

pragma solidity ^0.8.0;
contract C {
    uint public constant max = 9223372036854775807;
    uint public x;
    uint public y;
    function setX(uint _x, uint _y) public {
        x = _x;
        y = _y;
    }
    function setY(uint _x, uint _y) public {
        x = _x;
        y = _y;
    }
    function getX(uint _x) public view returns (uint) {
        return x;
    }
    function getY(uint _x, uint _y) public view returns (uint) {
        return y;
    }
    function test() public returns (uint) {
        uint a = getX(x, y);
        setX(x, 0);
        return getX(x, y);
    }
    function testb() public {
        uint a = getY(x
