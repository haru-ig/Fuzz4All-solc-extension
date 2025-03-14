pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated10 {
	contract mutated10 {
	   function add2() payable public {
	   	data.a += 1;
	   }
	   function add() public payable {
	   	data.a += 1;
	   }
	}
}

contract mutated11 {
	constructor() {
	    data.a++;
	}
}
@noinline

function alwaysReturns0() private pure returns(uint) {
  return 0;
}
@noinline

function alwaysReturns1() private view returns(uint) {
  return 1;
}

contract test1 {
	uint private x = alwaysReturns0();


	function callReturn() public {
    x = alwaysReturns1();
    uint returnResult = x;
	}
}
