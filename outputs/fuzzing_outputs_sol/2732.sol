pragma solidity ^0.8.0;
contract Caller2 {
    function fallback() public payable {}
    function payableFallback() public payable {}
    function receive() public payable {

        address(this).call{value: msg.value}("");
    }
}
