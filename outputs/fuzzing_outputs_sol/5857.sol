pragma solidity ^0.8.0;
contract CallerFallback {
    address x;
    function test() public payable {
        x = x;
        x = x; x = x;
    }
}
