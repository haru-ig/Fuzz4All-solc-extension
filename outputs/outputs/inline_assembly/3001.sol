pragma solidity ^0.8.0;
contract C {
    uint public constant MAX = 9223372036854775807;
    uint256 public x = 5;
    mapping (uint => uint256) private mapX;
    function setX(uint _x) public {
        mapX[_x] =  _x+1;
    }
    function getX(uint _x) public view returns (uint256) {
        return mapX[_x];
    }
}
