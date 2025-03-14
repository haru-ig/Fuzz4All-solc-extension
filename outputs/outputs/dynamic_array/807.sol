pragma solidity ^0.8.0;
library MyLib {

    struct MyStruct{
        uint x;
        uint y;
    }
    function f1(MyStruct storage _storage) public returns(uint) { uint i = 2; while(true) { if(_storage < i) { break; } _storage = _storage.y; } return _storage; }
    function f2(MyStruct storage _storage) public returns(uint) { uint i = 1; while(i < 4) { _storage.x = _storage.x; _storage.y = _storage; _storage.x = i + 1; i = i + 1; } return _storage; }
}
