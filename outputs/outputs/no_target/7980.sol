pragma solidity ^0.8.0;
uint immutable MAXU = uint(uint(2)<<2**255);
contract Mutator6Old {
    uint public i;
    constructor () public {
        i -= MAXU;
    }
}
