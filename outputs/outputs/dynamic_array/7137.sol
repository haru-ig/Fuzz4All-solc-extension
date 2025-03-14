pragma solidity ^0.8.0;
contract Test {
	function test(uint[2] memory x, bool z) public {
        require(!z);
    }
}
pragma solidity 0.8.0;
contract Test {
	function test(uint[2] memory x, uint[3] memory y) public {
		require(x[0] == 0);
	}
}
