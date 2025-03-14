pragma solidity ^0.8.0;
contract T9ES_mut5 {
    uint[] a;
    uint[] a2;
    uint[] a3;
    uint16[] b;
    uint8[] _storage;
    uint8[] _storage2;
    uint8[] _storage3;
    uint8[] _storage4;
    uint8[] _storage5;
    uint8[] _storage6;
    uint8[] _storage7;
    uint8[] _storage8;
    uint8[] _storage9;
    uint8[] _storage10;
    uint8 _storage11;
    uint8 _storage12;
    function Test() public {
        a2 = a;
        a2.push(a);
        a2.push(a);
        a2.push(a2);
        b = b;
        b.push(b);
        b.push(b);
        b.push(b);
        _storage2 = b;
        _storage2.push(_storage);
        _storage2.push(_storage);
        _storage2.push(_storage2);
        a3 = b3;
        a3.push(a3);
        a3.push(a3);
        a3.push(a3);
        a.push(a3);
        a4 = a4;
        a4.push(a4);
        a4.push(a4);
        a4.push(a4);
        b = b;
        b.push(b);
        b.push(b);
        _storage2 = b;
        _storage2.push(_storage);
        _storage2.push(_storage);
        _storage2.push(_storage2);
        a3 = b3;
        a3.push(a3);
        a3.push(a3);
        a3.push(a3);
        a.push(a3);
        a4 = a4;
        a4.push(a4);
        a4.push(a4);
        a4.push(a4);
        try {
          d3 = a3;
        assembly {
            d3 := mload(add(a3, 256))
        }
        } catch revert {}
        try {
         a2 = a;
