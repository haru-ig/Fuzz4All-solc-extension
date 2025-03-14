pragma solidity ^0.8.0;
contract OldVersionOfSame
{
    using Inline for uint;
    uint d;
    constructor() { d = 43; }
    function doIt() public returns (uint) {
     return 12 * d;
    }
}
