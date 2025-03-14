pragma solidity ^0.8.0;
contract NonChecked3Error {
    constructor(address) public {
        uint[] memory a;
        unchecked {
            a[2] = -1;
        }
    }
}
