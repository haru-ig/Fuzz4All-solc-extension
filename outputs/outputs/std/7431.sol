pragma solidity ^0.8.0;
contract Multitest2 {
	function Mutant() public {
		Multitest _m = new Multitest();
		address[] memory addresses = new address[](1);
		uint[] memory numbers = new uint[](1);
		uint[] memory bytes_numbers = new uint[](1);
		uint[] memory bytes_bytes_numbers = new uint[](1);

		addresses[0] = _m.address();
		numbers[0] = _m.number();
		bytes_numbers[0] = _m._bytes_numbers();
		bytes_bytes_numbers[0] = _m._bytes_bytes_numbers();
	}
}
