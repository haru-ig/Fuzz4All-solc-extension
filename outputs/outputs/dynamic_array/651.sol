pragma solidity ^0.8.0;
contract test58b {
	uint256[] public arrayB;
    uint256[] public arrayA;
	uint public length;
    function setElement() public returns (uint) {
		arrayA.push(arrayB[0]);
		length++;
		arrayA.push(arrayB[0]);
		length++;
		require(arrayA.length==length);
		require(arrayA[2]==arrayB[0]);
		return (length);
    }
    function getLength() public view returns (uint) {
		return length;
    }
}
