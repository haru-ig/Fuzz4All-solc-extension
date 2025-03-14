pragma solidity ^0.8.0;
contract ArrayArithmetic {
    struct MyStruct { uint num; }
    function append(MyStruct memory _o) public returns (MyStruct memory) {
        MyStruct memory copy = _o;
        return copy;
    }
    function appendCopy(MyStruct memory _s) public returns (MyStruct memory, MyStruct memory) {
        MyStruct memory copy = append(_s);
        return (copy, copy);
    }
    function insert(MyStruct memory _o, uint index) public returns (MyStruct memory) {
        _o.num = _o.num + 1;
        return _o;
    }
}
