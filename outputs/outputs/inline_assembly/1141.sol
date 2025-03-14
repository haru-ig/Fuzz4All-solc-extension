pragma solidity ^0.8.0;




contract MutatedClass {
	struct Mappable{
		uint x0;
		uint x1;
		uint x2;
		uint x3;
		uint x4;
		uint x5;
		uint x6;
	}

	Mappable.
    uint x1;
    constructor() public {
        x1 = 1;
      ...
    }

    function calculate() public returns (uint) {
        return x1;
    }

    function _modify() public {
        x1 = 2;
    }
}
