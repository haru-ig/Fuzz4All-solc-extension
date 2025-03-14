pragma solidity ^0.8.0;
contract CallerExample3 {
    uint functionValue;
    function fallback() payable public {
        functionValue = msg.value;
    }
}
