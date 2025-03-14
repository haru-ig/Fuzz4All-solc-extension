pragma solidity ^0.8.0;
contract invalidCaller {
    receive() external payable {}
    function receive() public payable {}
    fallback() public payable {}
}
