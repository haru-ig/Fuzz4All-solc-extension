pragma solidity ^0.8.0;
contract Test3 {
     struct S {
        string foo;
    }
    constructor() public {
        S memory s1;
        S memory s2;
        s2.foo = "";
    }
}
