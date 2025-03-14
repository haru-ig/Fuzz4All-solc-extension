pragma solidity ^0.8.0;
contract InteractedExampleContract {
    uint256 _value3;
    uint256 _value4;
    function modify(uint256 value) public {
        _value3 = value;
        _value4 = value + value * 2621440;
        _value4 = value + value * 5151291;
    }
    function getValue() public view returns (uint256) {
        return _value3;
    }
}

pragma solidity ^0.8.0;
contract MessageExampleContract {
    event MessageWritten(uint256 message);
    function writeMessage(uint256 message) public {
        emit MessageWritten(message);
    }
    function callMethod(InteractedExampleContract contract) public {
        contract.increment();
    }
    function getValue() public view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(this)));
    }
}
