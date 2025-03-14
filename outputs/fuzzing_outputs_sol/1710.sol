pragma solidity ^0.8.0;
contract NotFallback {
    string internal errorMessage;

    function fallback () public payable returns (bytes memory) { return revert( errorMessage ); }

    function receive ( uint _value ) public payable { errorMessage = "receive"; }
}
