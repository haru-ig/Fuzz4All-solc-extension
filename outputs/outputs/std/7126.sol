pragma solidity ^0.8.0;
contract Bits {


}

pragma solidity ^0.8.0;
contract Bits2 {
	uint private _bits;
	constructor () {
		_bits = 11;
	}
	function test() public {
		_bits =(_bits+1);
	}
}

pragma solidity ^0.8.0;
contract BitwiseAdd {
	uint base;

	constructor(uint _base) {
		base = _base;
	}
	function test() public {
		uint temp = base + base;
		return(temp);
	}
}
