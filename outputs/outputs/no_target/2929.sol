pragma solidity ^0.8.0;
contract second2 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i = 8;
        a = b * i;
        b = b / c;
        c = a % 2;
    }
}

pragma solidity ^0.8.0;
contract second3 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i = a / c;
    }
}
