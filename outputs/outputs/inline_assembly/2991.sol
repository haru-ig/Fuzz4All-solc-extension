pragma solidity ^0.8.0;
library L {
    uint public constant max = 9223372036854775807;
}
contract C {
    uint x = 5;
    mapping (uint => uint) mapX;
    function setX(uint _x, uint _y) public {
        uint y = mapX[_x];
        mapping(uint => uint) memory mapY = mapX;
        mapY[y] = _y;
    }
    function getX(uint _x) public view returns (uint) {
        return mapX[_x];
    }
}
