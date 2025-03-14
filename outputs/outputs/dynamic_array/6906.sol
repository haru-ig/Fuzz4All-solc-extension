pragma solidity ^0.8.0;
contract Test {
    struct S {
        string name;
        string state;
    }
    constructor(string memory name_) {
        S memory s;
        s.name = name_;
        s.state = "Open";
    }
    function f(S memory s) public {
    }
}
