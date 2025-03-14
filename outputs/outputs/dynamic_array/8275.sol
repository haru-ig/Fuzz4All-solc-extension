pragma solidity ^0.8.0;
contract StaticArray {
    uint b = 10**9;
    static uint a[] = [256, 257,65535 * 65536, 65536, 256, 175, 175];
    constructor() public {
        a = a;
    }
}
contract DynamicArray {
    uint[] internal _storage;
    constructor() public {
        _storage = _storage;
    }
    function myFunction() public {
        _storage.push(10**9);
    }
}
contract DynamicArray1 {
    uint[] internal _storage;
    constructor() public {
        _storage = _storage;
    }
    function myFunction() public {
        _storage.push(10**9);
    }
}
contract DynamicArray2 {
    uint[] public _storage;
    constructor() public {
        _storage = _storage;
    }
    function myFunction() public {
        _storage.push(10**9);
    }
}
contract DynamicArray3 {
    uint[] internal _storage;
    constructor() public {
        _storage = _storage;
    }
    function myFunction() public {
        _storage.push(10**9);
    }
}
contract DynamicArray4 {
    uint8[] internal _storage;
    constructor() public {
        _storage = _storage;
    }
    function myFunction() public {
        _storage.push(10**9);
    }
}
