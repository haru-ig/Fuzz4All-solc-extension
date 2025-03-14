pragma solidity ^0.8.0;
contract Caller {
    function Fallback(address a) public {
        emit FallbackLog(a);
    }
    event FallbackLog(address a);
}
