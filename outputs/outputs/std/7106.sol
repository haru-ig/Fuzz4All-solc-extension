pragma solidity ^0.8.0;
contract BitwiseXORX {
	uint a;
	function test() public returns (uint){
        a = a ^ a;
	}
}
contract BitwiseXORX {
	uint a;
	string c;
	function test() public returns (string memory){
        a = a ^ a;
        a = sha256(abi.encodePacked("4 ", "bytes4"));
        a = sha256(abi.encodePacked( "12345 ", "bytes3"));
        a = sha256(abi.encodePacked( "a long string "));
        a = sha256(abi.encodePacked( "a long string ", "bytes1"));
        a = sha256(abi.encodePacked( "a long string ", "bytes8"));
        c = a ^ a;
        return c;
	}
}
