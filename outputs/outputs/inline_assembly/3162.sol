pragma solidity ^0.8.0;
contract C {
	struct BData {
		uint id;
		string name;
		uint number;
		bool boolVal;
		mapping (uint => bytes) users;
	}

	mapping (uint => mapping (uint => bytes)) public balances;
	mapping (uint => mapping (uint => mapping (uint => bytes))) public extra;
	C public contractToMutate;

	constructor() public {
		balances[42] = BData(42,"User1",42,true);
		balances[42].users[42] = bytes("MyByte");
	}

	function addRecordToBTree(uint id, string memory name, uint number, bool boolVal) public {
		balances[id].id = id;
		balances[id].name = name;
		balances[id].number = number;
		balances[id].boolVal = boolVal;
		extra[id][0] = bytes(id);
		extra[id][1] = bytes(balances);
		extra[id][2] = bytes(name.bytes);
		extra[id][3] = bytes(stringToBytes32(id.toString()));
		extra[id][4] = bytes32(uintToBytes42(id));
		extra[id][5] = bytes32(addressToBytes42(msg.sender));
	}

	function getDataAsBytes32 (uint id) public view returns (bytes32 storageIdStorage, bytes32 balanceStorage, bytes32 extraStorage) {
		uint32 idAsUint = uintToBytes42(id);
		idStorage(balances, idAsUint);
		balanceStorage = balances[idAsUint].id;
		idStorage(extra, idAsUint);
		extraStorage = extra[idAsUint].id;
	}

	function getDataAsString(uint id) public view returns (string memory storageId, bytes32 balance, bytes32 extra) {
		uint32 idAsUint = uintToBytes42(id);
		idStorage(balances, idAsUint);
		balance = balances[idAsUint].name;
		idStorage(extra, idAsUint);
		extra = extra[idAsUint].id;
	}
}

function bytes32ToBytes (bytes32 b32) internal pure returns (bytes memory) {
	require(b32.length == 32);
	byte[] memory b = new byte[](32);
	uint k = 0;
	for (uint j = 0; j < 32; j++) {
		k
