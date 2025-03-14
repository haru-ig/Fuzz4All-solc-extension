pragma solidity ^0.8.0;
contract Caller {
    function Fallback(address a) public {
        selfdestruct(a);
    }
    event FallbackLog(address a);
}
