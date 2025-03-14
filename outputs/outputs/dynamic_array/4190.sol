pragma solidity ^0.8.0;
contract F {
    uint[6] public x = [ 1, 2, 3, 4, 5 ];
    uint public z;
    constructor(uint[6] memory input) public {
        x[3] = x[0] + x[1];
        x[4] = x[1] + x[2];
        x[5] = x[2] + 1;
        z = x[0] + x[1] + x[2] + 1;
    }
}

pragma solidity ^0.8.0;
contract F {
    uint[6] public x = [ 1, 2, 3, 4, 5 ];
    uint public z;
    constructor(uint[6] memory input) public {
        x = input;
        z = x[0] + x[1] + x[2];
    }
}
