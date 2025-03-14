pragma solidity ^0.8.0;
contract Test {
    constructor() {
        string[] memory s = string[1]{"12"};
        s[0] = "renamed";
    }
}
