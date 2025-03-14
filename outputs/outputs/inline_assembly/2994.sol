pragma solidity ^0.8.0;
contract C {
    uint public constant max=9223372036854775807;
    uint internal mappingX;
    function setX(uint _x, uint _y) public {
    	mappingX[_x] = _y;
    }
    function getX(uint _x) public view returns (uint) {
    	return mappingX[_x];
    }
}
