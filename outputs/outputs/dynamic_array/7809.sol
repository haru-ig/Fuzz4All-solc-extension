pragma solidity ^0.8.0;
contract Test11 {
    uint8 _mem;
    uint8[] _arr;
    constructor()
        public
    {
        uint8 _memoryStore = 40;
        _arr.push(uint8(_memoryStore));
    }
}
