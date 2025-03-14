pragma solidity ^0.8.0;
interface IArray {
	function push(uint _value) public;
	function pop() public view returns (uint);
	function value(uint _index) public view returns (uint);
	function length() public view returns (uint length);
	function min(uint _minValue) public view returns (uint);
	function max(uint _maxValue) public view returns (uint);
	function sum() public view returns (uint);
	function sort() public;
	function lengthCompare(uint _indexA, uint _indexB) public view returns (uint);
}
pragma solidity ^0.8.0;
interface IConvert {
	function toString(uint _value) public;
	function fromString(string memory _value) public view returns (uint);
}
pragma solidity ^0.8.0;
interface IMath {
	function square(uint _a) public view returns (uint);
	function modular(uint _a, uint _b) public view returns (uint);
	function squareRoot(uint _a) public view returns (uint);
}
pragma solidity ^0.8.0;
contract ArrayInterface {
	constructor();
	function valueAt(uint256 index) public view returns(uint);
	function valueAt(uint256 index, uint value) public void;
	function getValueLength() public view returns(uint);
	function getValues() public view returns (uint[1][] memory);
}
pragma solidity ^0.8.0;
contract MultiprecisionInterface {
	function add(uint _a, uint _b) public view returns (uint res);
	function add(uint _a, uint _b, uint _c) public view returns (uint res);
	function compare(uint _a, uint _b) public view returns (int res);
	function divide(uint _a, uint _b) public view returns (uint res);
	function multiply(uint _a, uint _b) public view returns (uint res);
}
pragma solidity ^0.8.0;
contract Multiprecision {
	address public address1 = msg.sender;
	address public address2 = msg.sender;
	constructor() {

	}
	function functionSignature(uint256 a) public pure returns (string memory sign) {
		return sign;
	}
	function returnUint() external pure returns(uint){
		return 1;
	}
	function returnAddress() external return(address){
		return address2;
	}
	function returnString() external pure returns(bytes memory){
		return bytes(0);
	}
	function callMethod() external {
		IConvert(address1).fromString
