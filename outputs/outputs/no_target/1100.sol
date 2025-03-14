pragma solidity ^0.8.0;
contract SemanticMutation6
{
    uint16 public test = 23 * 10 ** uint256(0x55) / 10;
    constructor() public {
        test /= 10;
        test *= 0;
     }
}
