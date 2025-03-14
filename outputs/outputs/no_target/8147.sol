pragma solidity ^0.8.0;
contract Mutated2 {
    uint x = 10;
    constructor () {
        x >= 10;
        x <= 10;
        x * 2 == 20;
        x >> 0!= 0;
        x -= 1;
    }
}

pragma solidity ^0.8.0;
contract Mutated1 {
    uint x = 10;
    constructor () {
        x + 1;
    }
}
contract Mutated {
    Mutated1 _m1;
    constructor () {
        _m1 = new Mutated1 ();
    }
}
