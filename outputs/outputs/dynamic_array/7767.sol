pragma solidity ^0.8.0;
contract Test6d {
    uint256[] _mem;
    constructor()
        public
    {
        _mem[0] = 8;
        _mem[6666666] = 15;
        _mem[9] = 1;
    }
}
