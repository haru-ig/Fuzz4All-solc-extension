pragma solidity ^0.8.0;
contract Contract12Mut4{
    event ContractCreated(address owner, uint256 indexed value);
    uint256 public num;
    event ContractRemoved(address owner);
    uint256 public num2;
    fallback() public {
        num = 1;
        num = 2;
    }

    receive() external payable  {
        emit ContractCreated(msg.sender, 2);
        num2 = 1;
        num2 = 2;
    }
}
