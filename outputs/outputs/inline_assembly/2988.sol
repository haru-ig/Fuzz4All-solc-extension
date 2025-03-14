pragma solidity ^0.8.0;
contract C {
    event X(uint j);
    uint x = 5;
    mapping (uint => uint) mapX;
    function setX(uint j, uint y) public {
        mapX[j] = y;
        emit X(j);
    }
    function getX(uint i) public view returns (uint) {
        return mapX[i];
    }
}
