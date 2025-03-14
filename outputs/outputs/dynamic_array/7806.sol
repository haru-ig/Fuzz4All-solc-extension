pragma solidity ^0.8.0;
contract Test11 {
    uint8[] private storage _arr;
    uint8 private _mem;
    constructor()
        public
    {
        uint8 _memoryStore = 40;
        _arr.push(uint8(_memoryStore));
    }
}
