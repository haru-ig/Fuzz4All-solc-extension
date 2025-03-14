pragma solidity ^0.8.0;
contract Test18 {
    uint public A;
    uint public B;
    uint public C;
    constructor() public {
        A = 1;
        B = 1;
        A = A + 1;
        C = C + 1;
        B = B + 1;
        C = C + 1;
    }
}
contract Test19 {
    uint public A;
    uint public B;
    uint public C;
    constructor() public {
        A = 1;
        B = 1;
        A = A + 1;
        A += 1;
        C += 1;
        B += 1;
        C += 1;
    }
}
contract Test20 {
    uint public A;
    uint public B;
    uint public C;
    constructor() public {
        A = 1;
        B = 1;
        A = A + 1;
        A += 1;
        A += 1;
        C += 1;
        B += 1;
        C += 1;
    }
}
contract Test21 {
    uint public A;
    uint public B;
    uint public C;
    constructor() public {
        A = 1;
        B = 1;
        A = A + 1;
        A += 1;
        A += 1;
        A += 1;
        A += 1;
        C += 1;
        B += 1;
        C += 1;
    }
}
