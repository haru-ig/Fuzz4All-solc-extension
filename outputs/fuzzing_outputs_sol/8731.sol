pragma solidity ^0.8.0;
contract mutatedCaller {
    receive() external payable { }
    receive() public pure { }
    fallback() public pure { }

    receive() external pure{}
    receive() public pure{}
}
