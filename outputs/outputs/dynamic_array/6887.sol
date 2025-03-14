pragma solidity ^0.8.0;
contract Test {
    constructor() {
        string memory s = string("12");
        s += "renamed";
    }
}
