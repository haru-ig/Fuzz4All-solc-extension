pragma solidity ^0.8.0;
contract Mutate10 {
    uint[] b;
    uint a;
    constructor() {
        a = 10;
    }
}
contract Mutate11 {
    uint[] b;
    constructor() {
        b = new uint[](2);
        b[1] = 20;
    }
}


pragma solidity ^0.8.0;
