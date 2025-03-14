pragma solidity ^0.8.0;
contract CallFallbackFunctionSix {
    fallback() external {
        uint val = msg.data[0];
    }
}
