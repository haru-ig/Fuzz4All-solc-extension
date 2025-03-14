pragma solidity ^0.8.0;
contract TestCallerNonFallback {
    uint result;
    constructor () public {}
    function() external payable { result = 11; }
    receive() external payable {}
}
