pragma solidity ^0.8.0;
contract C {
    uint y;
    function setY(uint _y) public {
    	y = _y;
    }
    function getY() public view returns (uint) {
    	return y;
    }
}
