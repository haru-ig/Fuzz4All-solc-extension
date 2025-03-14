pragma solidity ^0.8.0;
contract Address {
  function address() public pure {
		address s;
		s = msg.sender;
		s = msg.data;
		bytes memory data;
		data[0] = 1;
		data[3] = 0;
		data[47] = 2;
		data[4] = 3;
	}
}
