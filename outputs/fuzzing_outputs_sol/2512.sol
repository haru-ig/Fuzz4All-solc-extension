pragma solidity ^0.8.0;
contract Caller is WriteStorage {
  function useContract() public payable {
    uint256 storageValue = storageValue + 1;
    uint256 fallbackAmount = msg.value - gasleft();
    WriteStorage(_address).write();
    this.transfer(fallbackAmount);
  }
}
