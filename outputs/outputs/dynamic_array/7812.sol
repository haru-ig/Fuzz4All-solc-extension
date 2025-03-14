pragma solidity ^0.8.0;
contract Test11 {
    uint8 _mem;
    uint8[3] _arr;
    constructor()
        public
    {
        uint8 _memoryStore = 40;
        _arr[2] = uint8(_memoryStore);
        _arr.length = 7;
        _arr.push(uint8(_memoryStore));
    }
    function Test()
        public
        view
    {
        bytes memory resultString;
        emit _emit();
    }
}
