pragma solidity ^0.8.0;
contract Example15 {
    event ExampleEvent(uint256 value);
    function example15() external payable { }
}

contract Caller {
    address payable public contractAddr;

    fallback (uint256 value) external {
        contractAddr.transfer(value);
    }

    receive() external payable {
        contractAddr.transfer(msg.value);
    }

    uint256 value;
    uint256 public myValue;

    constructor(uint256 value) {
        contractAddr = msg.sender;
        myValue = value;
        value = 0;
    }

    fallback (uint256 v) public {
        value = v;
    }
}
