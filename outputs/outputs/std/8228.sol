pragma solidity ^0.8.0;
contract Multiprecision {

	function mul(uint a, uint b) pure public returns(uint) {
        return (a * b);
	}
	function div(uint a, uint b) pure public returns(uint) {
        return (a / b);
	}
}

pragma solidity ^0.8.0;
contract Multiprecision {

	function mul(uint a, uint b) public pure returns(uint) {
        return (a * b);
	}

}
contract Arrays {
	constructor () {






	}
	function Push(address[] memory arrayToAppend) public {
		for(uint i = 0; i < arrayToAppend.length; i++){
			arrayToAppend[i] = arrayToAppend[i] + 5;
		}
	}
	function getNumberOfElements(address[] memory arrayToSearch) public returns(uint) {

		return arrayToSearch.length;
	}
	function getFirstElement(address[] memory arrayToSearch) public returns(uint) {

		return arrayToSearch[0];

	}
	function getMax(address[] memory a) public returns (uint) {

		uint max = a[0];
		for(uint i = 1; i < a.
