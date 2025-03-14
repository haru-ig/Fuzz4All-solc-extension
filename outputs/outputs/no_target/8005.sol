pragma solidity ^0.8.0;
contract RestrictedMutator {
    uint x;
    constructor () public {
        x += 1;
        unchecked {
            x *= 0x14a3d26985fb4d0ff637c2048805db22;
        }
    }
}
