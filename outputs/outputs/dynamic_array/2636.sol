pragma solidity ^0.8.0;
contract ArrayMutations18 {
    constructor()  public {
        uint x = 0;
        uint x2 = (0 + 3) + (0 + 3);
        x2 = (x + 3) + (x2 + 3);
        x2 = (x2 + 3) + (x + 3);
    }
}
