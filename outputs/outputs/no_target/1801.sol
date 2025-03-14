pragma solidity ^0.8.0;
contract Mutate8 {
    uint public _1 = 1e18;
    uint public _2 = 3e18;
    constructor() public {
        _1 *= 7;
        uint _3 = 4;
        unchecked {
            unchecked {
                _2 /= 2;
            }
        }
    }
}
