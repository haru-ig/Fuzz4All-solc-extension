pragma solidity ^0.8.0;
contract ContractFallback {
    uint256 public count;
    constructor() {
        count = 2;
    }
    function fallback() public payable {
        count += 1;
        emit CallCount(count);
    }


    function ReturnEther() external payable {

      }
}
