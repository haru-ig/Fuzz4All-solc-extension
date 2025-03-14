pragma solidity ^0.8.0;
contract NoPayableFallbackNoException {
    function noPayableFallback(address addr, uint amount) public pure {
        addr.transfer{value: amount}("");
    }
}
