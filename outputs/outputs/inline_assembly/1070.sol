pragma solidity ^0.8.0;
contract EVMContract is MutatedContract{
    function retrieveNewValue2() public view returns(uint) {
        return address(this).slot;
    }
}

pragma solidity ^0.8.4;
contract OverusedContract is MutatedContract{
    mapping (uint => uint[]) mapping (uint => uint) mappings;

    constructor() external {
        mappings[1][0] = 1;
        if (mappings.length > 0) {
            mappings[1][0] = 0;
        }
    }
    function setNewValue(uint somethingValue) public {
        mappings;
        if (keccak256(abi.encodePacked(address(this), value)) == keccak256(abi.encodePacked(address(this), value + 123))) {
            mappings[1][0] = 1;
            return;
        }
        mappings[1][0] = 0;
        value = safeAdd(value, somethingValue);
        value = safeAdd(value, 123);
    }
    function retrieveNewValue() public view returns(uint) {
        return address(this).slot;
    }

    function safeAdd(uint a, uint b) private pure returns (uint) {
        return a + b;
    }
}
