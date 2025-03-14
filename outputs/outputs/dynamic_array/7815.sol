pragma solidity ^0.8.0;
contract Test10 {
    uint8 _mem;
    uint8[] _arr;
    constructor()
        public
    {
        uint8 _initMemoryStore = 9;
		uint8 _arr2index = 15;
		_arr[_arr2index/2] = _initMemoryStore;
    }
}
pragma solidity ^0.8.0;
contract Test5 {
    uint8 _mem;
    uint8[] _arr;
    constructor()
        public
    {
        uint8 _initMemoryStore = 10;
		uint8 _arr2index = 30;
		_arr[_arr2index] = _initMemoryStore;
    }
}
