pragma solidity ^0.8.0;
struct Semantic {
    bool x;
    bool y;
    bool z;
    uint256 y_;
    uint16 z_;
}

struct A {


    A x;
    A y;
    A z;
    uint256 _a_;
    uint32 _b_;
}

A memory a_struct;
struct Semantic {
    bool x;
    bool y;
    bool z;
    uint256 y_;
    uint16 z_;
}
Semantic a_semantic;


pragma solidity ^0.8.0;
struct A {
    Semantic a;
}

struct A struct1 {
    Semantic struct1;
}
