pragma solidity ^0.8.0;
contract MutatedFallbackModifier {
    constructor() {
        this.setFallback(this.fallback);
    }
    receive() external pure {}
    function fallback() pure external {}
    function setFallback(fallbackContract _fallback) public {
        fallback = address(_fallback);
    }
    function receive() public {
        emit ReceiveNormal(address(this));
    }


    function ReceiveNormal(address contractAddress) public {
        emit ReceiveNormal(contractAddress);
    }
    function ReceiveDirect(address contractAddress) public {
        emit ReceiveDirect(contractAddress);
    }
}

pragma solidity ^0.8.0;
contract MultipleFallbackModifier {
    modifier normal { receive() external payable {} }
    modifier direct { receive() external {} }
    constructor() {
        this.setNormalFallback(this.fallback);
    }
    receive() public {
        emit ReceiveNormal(address(this));
    }


    function ReceiveNormal(address contractAddress) public normal direct {
        emit ReceiveNormal(contractAddress);
    }
    function fallback() public {
        emit ReceiveNormal(address(0));
    }
}
