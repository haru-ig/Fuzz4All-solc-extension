pragma solidity ^0.8.0;
import "../buggy-07.sol";
contract Mut {
    buggy1 buggy = buggy1(new buggy1());
    constructor() { buggy1 b = buggy1(new buggy1());}
}
