pragma solidity ^0.8.0;
contract Mutate60_Semantics {
	uint[1] immutable _test;
}
pragma solidity >0.5.6;
contract Mutate61_Semantics {
	uint256 max = _MAX_INT;
}
pragma solidity >0.7.6;
contract Mutate62_Semantics {
	address[1] memory _test;
}
