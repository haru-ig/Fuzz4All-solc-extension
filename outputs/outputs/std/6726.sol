pragma solidity ^0.8.0;
contract Mutate60_Semantics {
  uint16 immutable private _MINT1 = 10;
  uint constant private _MAX_INT = 2**255 - 1;
}

pragma solidity ^0.8.0;
contract Mutate61_Semantics {
  uint private _a;
  uint private _b;
}

pragma solidity ^0.8.0;
contract Mutate62_Semantics {
	uint[] private _a;
	constructor(uint b){
		_a = [1,_a,2,_a];
	}
}

pragma solidity ^0.8.0;
contract Mutate63_Semantics {
	uint[] private _a;
}

pragma solidity ^0.8.0;
contract Mutate64_Semantics {
	uint[] private _a;
}

pragma solidity ^0.8.0;
contract Mutate65_Semantics {
	uint[] private _a;
	constructor(){
		_a = [_a,1,_a,2,_a];
	}
}

pragma solidity ^0.8.0;
contract Mutate66_Semantics {
	uint[] private _a;
}

pragma solidity ^0.8.0;
contract Mutate67_Semantics {
  uint[] private _a;
  uint[] private _b;
}

pragma solidity ^0.8.0;
contract Mutate68_Semantics {
  uint72x128 constant private _uint72x128min = uint72x128(uint(-1));
  uint72x128 constant private _uint72x128max = uint72x128(uint(255));
}

pragma solidity ^0.8.0;
contract Mutate69_Semantics {
  uint8x16 constant
