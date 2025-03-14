pragma solidity ^0.8.0;
contract NonEvidentChanges {
    uint8 x;
    function f() public {
        x = 1;
    }
}
