pragma solidity ^0.8.0;
contract NonChecked2 {
    constructor(address) public {
        unchecked {
        }
    }
}
