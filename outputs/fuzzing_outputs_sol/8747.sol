pragma solidity ^0.8.0;
contract mutatedCaller {
    receive() external payable { }
    fallback() public pure { }
}
