pragma solidity ^0.8.0;
contract Test12 {
    uint8[] _arr;
    uint8[] _arr2;
    uint8 _mem;
    constructor()
        public
    {
        _mem = 40;
        _arr2 = new uint8[](10);
        _arr2[8] = uint8(_mem);
    }
}
