pragma solidity ^0.8.0;
contract NonEmptyFallback {
    receive() external payable {assembly {
        let a := 30
        _
    }}}
