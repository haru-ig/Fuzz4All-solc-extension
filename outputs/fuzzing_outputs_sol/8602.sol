pragma solidity ^0.8.0;
contract NotCaller {
    function NotCaller() public {}
    fallback() public payable {
        selfdestruct(0x00);
    }
}
