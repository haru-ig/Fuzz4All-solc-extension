pragma solidity ^0.8.0;
contract TestFallback3
{
    bytes public bytesMessage = "hello";
    uint256 public constant n = 3;
    constructor() {
        bytes bytes_copy = bytesMessage;
        uint256 r = bytes_copy.length + 2;
    }
    function f() public payable
    {
        uint256 r = bytesMessage.length * 8 - 3;
    }
}
