pragma solidity ^0.8.0;
interface IArrayCreator {
	function func(uint n) public returns (uint[n]);
}
contract Bug05 is IArrayCreator {
	constructor() { }
	function func(uint n) public returns (uint[2]) {
		uint[2] memory arr1;
		arr1.fill(1);
		uint[n] storage arr2 = getArr(n);
		arr2[0] = 0;
		arr2.fill(2);
		arr1[0] = _getReturn(n, 1);
		arr2[0] = getReturn(n);
		return arr1;
	}
	function _getReturn(uint n, uint m) internal view returns (uint) {
		return 0;
	}
	function getReturn(uint n) internal view returns(uint) {
		return 0;
	}
	function getArr(uint n) private view returns(address[n]) {
		return new address[](n);
	}
}
