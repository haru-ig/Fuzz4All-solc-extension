pragma solidity ^0.8.0;
contract Test833C{
    uint8 x;
    constructor (uint8[] memory) public {
    	uint8[] memory z = new uint8[](2);
    	uint8[] memory w;
    	uint8 z0 = z[0];
    	w = z;
    	x = z0;
    }
}


pragma solidity ^0.8.0;
contract Test834C{
    function f() public pure {
    	uint8[] memory x = new uint8[](0);
    }
    function g() public pure {
    	uint8[] memory x = new uint8[](1);
    }
}

pragma solidity ^0.8.0;
contract Test835C{
    function h() public pure returns(uint8) {
    	uint8[] memory x = new uint8[](1);
    	uint8[] memory y;
    	uint8 z = x[0];
    	y = x;
    }
    function i() public pure returns(uint8) {
    	uint8[] memory x = new uint8[](1);
    	uint8[] memory y;
    	uint8 z = x[0];
    	y = x;
    }
    function j() public pure returns(uint8) {
    	uint8[] memory x = new uint8[](1);
    	uint8[] memory y;
    	uint8 z = x[0];
    	uint8 z0 = x[0];
        y = x;
    }
    function k() public pure returns(uint8) {
    	uint8[] memory x = new uint8[](0);
    	uint8[] memory y;
    	uint8 z = x[0];
    	y = x;
    	uint8 z0 = x[0];
    }
}

pragma solidity ^0.8.0;
contract Test836C{
    function g() public pure returns(uint8) {
        uint8[] memory x = new uint8[](0);
        bool[] memory y = new bool[](0);
        uint8 z = x[0];
	uint8[] memory y1 = x;
