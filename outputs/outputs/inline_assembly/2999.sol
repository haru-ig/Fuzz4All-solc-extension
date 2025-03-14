pragma solidity ^0.8.0;
contract C {
    uint public constant max = 9223372036854775807;
    uint public x = 5;
    mapping(bytes32 => uint) public mapX;
    function setX(uint _x, uint _y) public {
        mapX[_0x] = _y;
    }
    function getX(uint _x) public view returns (uint) {
        return mapX[_x];
    }
}
