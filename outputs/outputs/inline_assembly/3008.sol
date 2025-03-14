pragma solidity ^0.8.0;
contract C {
    uint public constant max = 9223372036854775807;
    uint public x = 5;

    mapping (uint => uint) public mapX;
    function setX(uint _x, uint _y) public {
        mapX[_x] = _y;
    }
    function getX(uint _x) public view returns (uint) {
        return mapX[_x];
    }
    function test() public returns (uint) {
        uint a = getX(x);
        setX(x, a+1);
        return getX(x);
    }
    function testb() public {
        uint a1 = getX(x);
        uint a2 = C.setX(x, a1+1);
        uint a3 = C.getX(x);
        require(a2 == a3);
    }
}
