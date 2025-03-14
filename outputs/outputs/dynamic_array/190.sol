pragma solidity ^0.8.0;


pragma solidity ^0.8.0;
contract C1 {
	struct Contract {

		address contract;

		uint256 length;


		constructor(address _contract) {
			contract = _contract;
			length = addressSize(_contract) * 2;
		}


		function addressSize(address _contract) private pure returns (uint256) {
            byte _size;

            assembly {
                _size := extcodesize(_contract)
            }
			return _size;
		}
	}

	modifier onlyContract() {
		require(msg.sender == Contract(msg.sender).contract, "Caller must have contract in them's memory");
		_;
	}
}

pragma solidity ^0.8.0;
contract C2 is C1 {

modifier onlyOwner() {
	require(msg.sender == C2(C2(C2(C2(C2(C2(msg.sender))))).contract).contract);
	_;
}
}

pragma solidity ^0.8.0;
modifier onlyCallers() {
	require(msg.sender == C2(C1(msg.sender).contract).contract);
	_;
}


pragma solidity ^0.8.0;
contract C3 is C2 {

modifier onlyOwner() {
	require(msg.sender == C2(C1(msg.sender).contract).contract);
	_;
}
}

pragma solidity ^0.8.0;
