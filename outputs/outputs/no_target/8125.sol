pragma solidity ^0.8.0;
contract Mutated2 {
    uint y;
    uint y_;
    constructor() {
        bytes memory empty = "";
        y;
        if (0 < 1) {
            y_;
        }
    }
}

pragma solidity ^0.8.0;
contract Mutated3 is Mutated2 {
    uint z;
    constructor() {
        bytes memory empty = "";
        z;
    }
}
