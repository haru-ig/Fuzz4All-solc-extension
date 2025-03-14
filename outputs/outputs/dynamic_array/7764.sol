pragma solidity ^0.8.0;
contract Test6c {
    uint256[] _mem;
    uint256 _value = 845;
    constructor()
        public
    {
        _mem[0] = 8;
        _mem[100] = 15;
        _mem[9] = 1;
    }
}
