pragma solidity ^0.8.0;
contract Mutated_2_2 {
    constructor() {
        bool z = false;
        bool y = z;
        if(Mutated_5_0.max(y, 5) == 5) {
            revert();
        }
        y = true;
        if(Mutated_5_0.max(y, 5) == 5) {
            revert();
        }
        y = false;
        if(Mutated_5_0.max(y, 5) == 10) {
            revert();
        }
        y = 15;
        if(Mutated_5_0.max(y, 5) == 10) {
            revert();
        }
    }
}
