pragma solidity ^0.8.0;
struct Base{
    bool a;
    uint a2;
}

struct Struct {
    mapping(uint => uint) _a;
}

contract C {
    Struct s;
    struct Base[] arr;
}
