pragma solidity ^0.8.0;
contract Mutate2 {
    uint public _1;
    constructor() public {
        _1 = -1;
        _1 = -2 ** 128 - 3;
        _1 = uint(2 ** 128);

    }
}
