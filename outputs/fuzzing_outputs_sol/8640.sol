pragma solidity ^0.8.0;
contract Caller {
    struct Amount {
        address payable caller;
        uint256 amount;
    }
    mapping(address => mapping(address => Amount)) public amounts;
    receive() external payable {
        Amount memory _amount = Amount({
            caller: msg.sender,
            amount: uint256(msg.value)
        });
        amounts[msg.sender][msg.sender] = _amount;
    }
}
