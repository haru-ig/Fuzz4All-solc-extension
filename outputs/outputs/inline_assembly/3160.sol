pragma solidity ^0.8.0;
contract C {
	struct BData {
		uint id;
		string name;
		uint number;
		bool boolVal;
		mapping (uint => bytes) users;
	}
	uint public balances;
	struct AData{ bool flag; }

	event Mod(uint);

	constructor () public { BData storage x = new BData; balances = 0; AData storage y = new AData; x.users[1] = "value";
	}

	fallback() external { AData storage a = new AData; mod(); Mod(balances += a.flag? 1: 0);y.flag = true; }

	function mod() public view returns (uint) { }
	function getter() public view returns (uint) { }
	function mod_and_getter() public view returns (uint, uint) { }

	function getter_and_mod() public view returns (uint, uint) { AData storage a = new AData; return (balances + a.flag? 1: 0, balances);   }
}
