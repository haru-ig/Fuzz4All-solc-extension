pragma solidity ^0.8.0;
contract Test2 {
    constructor() {
        S[] memory storageS;
        storageS[0].foo = "renamed";
        storageS[1].foo = "";
    }
}
