pragma solidity ^0.8.0;
contract mutated {
	uint public a;
	constructor() public {
		a = a + 500;
		if(a == 0){
			a = 1000;
			a = 0;
		}
		a = a - 500;
		a = 0;
	}
}

pragma solidity ^0.8.0;
contract contractInstance {
	uint internal a;
	constructor() public {
		a = 1000;
	}
	function add5(contractInstance b) public {
		b.a += 500;
	}
	function add5(address b) public {
		b.add5(this);
	}
}

contract externalContract  {
	uint internal a;
	constructor() public {
		a += 100;
	}
}

pragma solidity ^0.8.0;
function compilerFunction() internal returns (bytes memory) {
	uint internal a;
	assembly {
		#ifdef A

		a := a + 400
		#else

		#endif
	}
}
