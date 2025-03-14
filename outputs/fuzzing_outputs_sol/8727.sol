pragma solidity ^0.8.0;
contract mutatedCaller {
    receive() public pure {}
    function accept() public pure {}
    receive() external payable {}
}
