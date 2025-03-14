pragma solidity ^0.8.0;
contract Test10 {
    uint8[] _arr;
    uint8 _mem;

    constructor()
        public
    {
        uint8 _memoryStore = 40;
        _arr.push(uint8(_memoryStore));
    }
}
