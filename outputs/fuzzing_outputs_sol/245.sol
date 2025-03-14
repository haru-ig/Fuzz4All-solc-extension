pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback3 {
    constructor() payable {}
    function f1() public returns (bool) {
        require(false);
        return true;
    }
    fallback () : I {
        require(false);
    }
}
library CallFallback {
    function CallFallback(address f) public payable returns (bool) {
        return f.call{value: msg.value}("");
    }
}
