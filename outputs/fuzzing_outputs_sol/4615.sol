pragma solidity ^0.8.0;
contract Mutated {
    constructor() {
        c = true;
    }
    fallback (uint8) public {


        contractMutated();
    }
    bool public c = false;
    function contractMutated() public {
        b = c == true;
    }
    bool public b = false;
}
