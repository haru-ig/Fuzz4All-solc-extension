pragma solidity ^0.8.0;
contract mutatedCallerFallback {
    receive() external payable{}
    receive() public payable {}
    function receive() public payable {}
    receive() public payable {}
    fallback() external payable {}
}
