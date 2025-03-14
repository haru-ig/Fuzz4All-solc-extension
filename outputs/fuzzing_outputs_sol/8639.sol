pragma solidity ^0.8.0;
contract A {
    uint public value;
    constructor(uint256 _value) {
        value = _value;
    }

    function setMutatorAddress(address addr) public {
        Mutator mutator = Mutator(addr);
        mutator.setMutatorAddress(msg.sender);
    }
}


pragma solidity ^0.8.0;
contract B {
    struct Fallback {
        uint256 data;
        bytes operatorNew(bytes memory _opdata_) external pure;
    }

    uint private value;
    constructor(uint256 _value) {
        value = _value;
    }

    fallback() external {
        fallbackData(msg.data);
    }

    function fallbackData(bytes memory _data) public pure {
        value = abi.decode(_data, (uint));
    }
}
