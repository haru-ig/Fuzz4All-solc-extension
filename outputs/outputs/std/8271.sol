pragma solidity ^0.8.0;
contract Array
{
	uint public[] a;
	int public b;
}
contract Convert
{
	string public c;
	uint private d;
	function fromUtf8(string memory b) public pure returns(uint) { return bytes(b).length; }
}
