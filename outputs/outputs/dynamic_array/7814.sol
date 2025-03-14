pragma solidity ^0.8.0;
contract Test12 {
    uint8 _mem;
    uint8[] _arr;

    constructor()
        public
    {
        uint8 _memoryStore = 40;
        _arr.push(_memoryStore);
    }
}

pragma solidity ^0.8.0;
contract Test13 {
    uint8 _mem;
    uint8[] _arr;

    constructor()
        public
    {
        uint8 _memoryStore = 40;
        _mem = _memoryStore;
        _arr.push(_mem);
    }

    function test()
        public
    {
        uint8 _memoryStore = _memoryStore + 1;
        uint8 [] memory myarray = new uint8[](_memoryStore * 2);

        for (uint i=0; i<_memoryStore; i++){
            myarray[2*i] = i % 2 == 0? i : _memoryStore - i;
            myarray[2*i + 1] = i % 2 == 0? _memoryStore - i : i;
        }

        if (_memoryStore < 5) {
            uint8 _memoryStoreCopy = _memoryStore + 1;
            _arr.push(_memoryStoreCopy);
        }
        _arr = myarray;
    }
}
