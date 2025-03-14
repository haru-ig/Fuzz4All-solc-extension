pragma solidity ^0.8.0;
contract Mutator {
    address payable public receiver;
    mapping(address => uint256) public amounts;
    receive() external payable {
        amounts[address(this)] += msg.value;
        receiver.sendValue(msg.value);
    }
}

pragma solidity ^0.8.0;
contract LowLevelCallMutator {
    fallback() payable {
        msg.sender.call{value: msg.value}(abi.encodeWithSignature("testFallback()"));
    }

    receive() {}
    bytes4 constant testFallback = 0xf263b366;
}
