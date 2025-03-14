pragma solidity ^0.8.0;
contract Test12 {
    uint8 _mem;
    uint8[] _arr;
    constructor()
        public
    {
        uint8 _initMemoryStore = 15;
		uint8 _arr2index = 0;
		_arr[_arr2index] = _initMemoryStore;
    }
}
