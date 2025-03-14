pragma solidity ^0.8.0;
contract Mutate4 {
    uint public _1;
    uint public _2;
    constructor() public {
        _1 = 42;
        _2 = +0.11;
    }
}

pragma solidity ^0.8.0;
contract Mutate5 {
    uint public _1;
    uint public _2;
    uint public _3;
    constructor() public {
        _1 = 42;
        _2 = +0.11;
        _3 = -0x11;
    }
}
