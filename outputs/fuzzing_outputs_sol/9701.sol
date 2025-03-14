pragma solidity ^0.8.0;
contract NonPayable receiveFallback {
    fallback() external {
        fallback();
    }
}
