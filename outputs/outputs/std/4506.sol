pragma solidity ^0.8.0;
contract MyContract {
	struct S {
		uint s;
		uint r = 0;
		constructor() {
			s *= s;
			}
		}
	S s;
	constructor() {
		s.s;
		s = s - s;
		}
	function f() public {
		s.s;
		s = s + s;
		}
	}


pragma solidity ^0.8.0;
contract MyContract is Contract {
	uint a = 1;

	function setContractAddress(address _addr) public {ContractAddr = _addr;}
	function f() public {
		a;
		setContractAddress(address(0));
		}
	}
 pragma solidity ^0.8.0;
contract MyContract2 is MyContract {
	constructor() {
		}
	function f() public {
		s.x = 0;
		}
	}
pragma solidity ^0.8.0;
contract MyContract3 is MyContract2 {
	constructor() {
		}
	function f() public {
		s.x;
		s = s + s + s + s + s;
		}
	}
pragma solidity ^0.8.0;
contract MyContract4 is MyContract3 {
	constructor() {
		}
	function f() public {
		s.r += 1;
		}
	}
pragma solidity ^0.8.0;
contract MyContract5 is MyContract4 {
	constructor() {
		}
	function f() public {
		s.s;
		s + s;
		s = s * s;
		}
	}
pragma solidity ^0.8.0;
contract MyContract6 is Contract, MyContract5 {
	constructor() {
		}
	function getAddressFromContract() public view returns (address){
		return ContractAddr;
		}
	function f() public {
		s.x = s.s;
		a = s.xs;
		a;
		}
	}
pragma solidity ^0.8.0;
contract MyContract7 is Contract, MyContract5 {
	constructor() public view {
		ContractAddr = address(0);
		a = s.x;
		a;
		a = s
