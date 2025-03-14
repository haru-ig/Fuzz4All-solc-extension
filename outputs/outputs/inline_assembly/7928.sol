pragma solidity ^0.8.0;
contract L73Mutated {
    uint x;
    function sneaky() public {
        if (true) {
            x += 3;
        } else {
            x += 2;
        }
    }
}
