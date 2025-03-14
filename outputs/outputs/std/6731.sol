pragma solidity ^0.8.0;
contract Mutate60_Semantics {
	uint constant private _MAX_INT = uint256(2**(255 - 1));
	uint256 max = _MAX_INT;
}

pragma solidity ^0.8.0;
contract Mutate61_Semantics {
	uint constant private _MAX_INT = 2**256 - 1;
	uint256 max = _MAX_INT;
}

pragma solidity ^0.8.0;
contract Mutate62_Semantics {
	uint constant private _MAX_INT = uint256(2**(256 - 1));
	uint256 max = _MAX_INT;
}
