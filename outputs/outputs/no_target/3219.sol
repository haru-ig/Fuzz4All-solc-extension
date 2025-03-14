pragma solidity ^0.8.0;
contract eight {
    constructor() public
    {
        b(b());
    }
    function b(uint8 _b) public pure
    {
        assert(b() == _b);
    }
}
