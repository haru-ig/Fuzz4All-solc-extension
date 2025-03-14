pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract C {
	struct BData {
		uint id;
		string name;
		uint number;
		bool boolVal;
		mapping (uint => bytes) users;
	}
	BData public balances;
	modifier test01(uint id) {
		balances.users[id] = "test";
		uint test = balances.users[id];
		assembly {

		}
		assertEq(0, test);
	}
	modifier test02 {
		balances.users[1] = "testing";
		uint test = balances.users[1];
		delete balances.users[1];
		assertEq(0, test);
	}
	modifier test03(uint id) {
		balances.users[id] = "test";
		balances.users[id] = "test";
		uint test = balances.users[id];
		assembly {

		}
		assertEq(0, test);
	}
	modifier test04 {
		delete balances.users[1];
		uint test = balances.users[1];
		balances.users[1] = "test";
		assembly {

		}
		assertEq(test, 0);
	}
}
