pragma solidity ^0.8.0;
contract Test3 {
    constructor(S memory s) {
        s.foo = "renamed";
    }
}
