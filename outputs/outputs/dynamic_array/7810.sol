pragma solidity ^0.8.0;
contract Test12 {
    constructor()
        public
    {
        uint8 _memoryStore = 40;
        uint8[] memory _arr = new uint8[](2);
        _arr.push(_memoryStore);
        _arr.push(_memoryStore);
    }
}

pragma solidity ^0.8.0;
contract Test13 {
    constructor()
        public
    {
        uint8 _memoryStore = 40;
        uint8[] memory _arr = new uint8[](3);
        _arr.push(_memoryStore);
        caller();
    }
    function caller() public {
        uint8 _storageStore = 128;
        _arr.push(_storageStore);
    }
}

pragma solidity ^0.8.0;
contract Test14 {
    uint8 _mem;
    constructor()
        public
    {
        uint8 _memoryStore = 40;
        _arr.push(uint8(_memoryStore));
    }
    uint8[] private _arr;
}
