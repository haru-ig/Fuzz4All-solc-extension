pragma solidity ^0.8.0;
contract MutatedCaller{
    receive() modifier pure{
        _;
    }

    function fallback() public payable {}
}
