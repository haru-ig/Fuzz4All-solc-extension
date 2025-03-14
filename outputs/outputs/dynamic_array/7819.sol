pragma solidity ^0.8.0;
contract Test13 {
    uint8 _mem;
    uint8[] _arr;
    uint8[] _arr2;
    uint8[][] _arr3;
    uint8[][] _arr4;
    uint8[][] _arr5;
    uint8[][][] _arr6;
    uint8[][][][] _arr7;
    constructor()
        public
    {
        uint8 _initMemoryStore = 15;
		uint8 _arr2index = 0;
		uint8 _arr3index = 0;
		uint8 _arr4index = 0;
		uint8 _arr5index = 0;
		uint8 _arr6index = 0;
		uint8 _arr7index = 0;
		_arr[_arr2index][_arr3index][_arr4index][_arr5index][_arr6index][_arr7index] = _initMemoryStore;
    }
}
