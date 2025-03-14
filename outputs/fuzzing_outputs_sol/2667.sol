pragma solidity ^0.8.0;
abstract contract AbstractCallWithFallback2 {
    function onFallback(address) public virtual payable {
    }
    function fallback() public {
        onFallback();
    }
}
