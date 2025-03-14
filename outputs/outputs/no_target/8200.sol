pragma solidity ^0.8.0;
contract Mutated7v {
    constructor() {
        uint x = uint(-132);
        if (x == -132)
            revert("bad value");
        else
            x--;
    }
}
