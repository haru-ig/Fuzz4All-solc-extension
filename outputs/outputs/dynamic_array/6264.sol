pragma solidity ^0.8.0;
import "./l.sol";
contract test {
	function f() public {
		s memory x_memory = l.get();
		s storage s_storage = x_storage();
		s_storage.a = 2;
		s_storage.b = 3;

	}

}
