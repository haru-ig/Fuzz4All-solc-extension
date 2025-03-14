pragma solidity ^0.8.0;
contract previouslyGeneratedSemanticallyEquivalentToPreviouslyGeneratedWithoutABICoder is isSemanticallyEquivalentToPreviouslyGeneratedWithoutABICoder {
	address public lastSender;
	function setLastSender(address _value) public {
		lastSender = _value;
	}
}

pragma solidity ^0.8.0;
contract useABICoder {
	function getValueLastSender(address _this) public view returns (uint256) {
		returnsABICoder(_this);
	}
	function getFunctionLastSender(address _this) public pure returns (uint256) {
		returnsABICoder(_this);
	}
	contract returnsABICoder is isSemanticallyEquivalentToPreviouslyGeneratedWithoutABICoder {
	}
}
