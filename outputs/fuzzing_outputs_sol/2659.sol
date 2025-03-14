pragma solidity ^0.8.0;
abstract contract AbstractCallWithFallback {
    function onFallback(address) public virtual payable {

    }

    function fallback() public {
        onFallback(msg.sender);
    }
}
