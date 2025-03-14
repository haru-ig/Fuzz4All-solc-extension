pragma solidity ^0.8.0;
contract Test {
    constructor() {
        string memory s = bytes("12");
        s = "renamed";
    }
}
