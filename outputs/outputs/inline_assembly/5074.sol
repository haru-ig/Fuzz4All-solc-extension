pragma solidity ^0.8.0;
contract B {
	uint public x = 0;

	uint public z = x;
	uint public y = x;
	uint public value = 10000;
	constructor() public{
		x = 1;
		uint constant constant1 = x + x;
		non_payable();
		non_payable();
	}

	function non_payable() public {
	x = 1;
	x = 2;
	x = 5;
	x = 11;
      value = 500;
      value = 10000;
	}
    function payable_non_payable() public {
	x = 1;
	x = 2;
	x = 5;
	x = 11;
    value = 500;
	}



    function payable_value() public {
	x = 1;
	x = 2;
	x = 5;
	x = 11;
    value = 200;
    value = 5000;
    value = 8000;

    }

}
