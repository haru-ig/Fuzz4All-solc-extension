pragma solidity ^0.8.0;
contract Contract {
	uint256 internal _value = 3;
	constructor() {	_value = 7; }
    function x() public view returns (uint) {
      return _value;
    }
    function y() public returns (uint) {
      _value = 11;
      return 6;
    }
    function w() public returns (uint) {
    	_value = 5;
    	return 8;
    }
    fallback() external payable {
    }
}
