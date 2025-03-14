pragma solidity ^0.8.0;
contract D {
    uint32 public x  = 3 * 10;
}

pragma solidity ^0.8.0;
contract interfaceC {
	uint16 public constant log0 = 8;
	uint16 public constant log1 = 9;
	uint16 public constant log2 = 10;
	uint16 public constant log3 = 11;
	uint16 public constant log4 = 12;
}
contract B is interfaceC {
	uint16 public constant log4 = log1;
}
contract D is B {
    uint16 internal a;
}
contract C is A, D{
	constructor() public {
		x = 4;
	}
}
contract A{
	function method1() public view returns (uint64) {
		return x / x;
	}
}
