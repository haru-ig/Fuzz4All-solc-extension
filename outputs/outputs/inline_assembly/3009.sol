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
        setX(x, a+1);
        return getX(x);
    }
    function testb() public {
        uint a = getX(x);
        C.setX(x, a+1);
        uint b = C.getX(x);
        require(a == b);
    }
    constructor() {
        C.setX(x, 0);
        setX(x, 0);
    }
}
