pragma solidity ^0.8.0;
contract Say {
    string public str;
    function test() public {
	str = "hello";
    }
    function test2() public returns (string memory mem) {
	str = "world";
	return str;
    }
}
