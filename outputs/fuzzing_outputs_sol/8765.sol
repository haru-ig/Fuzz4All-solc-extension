pragma solidity ^0.8.0;
contract FallbackWithReceiveFunction {
    function fallback() public pure { emit Emitted(); }
   event Emitted()
    { }
}
