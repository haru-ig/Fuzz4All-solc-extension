pragma solidity ^0.8.0;
contract Module {
    function add(uint _a, uint _b) public pure returns (uint) {
        uint temp = 0;
	    temp + _a;
	}
    function add(uint _a, uint _b, uint _c) public pure returns (uint) {
        uint temp = 0;
        temp + _a + _b + _c + _a;
    }
    function add(uint _a, uint _b, uint _c, uint _d) public pure returns (uint) {
        uint temp = 0;
        temp + _a + _b + _c + _d + _a;
    }
}
