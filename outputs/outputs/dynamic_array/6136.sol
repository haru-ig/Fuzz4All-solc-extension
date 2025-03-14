pragma solidity ^0.8.0;
contract Test90004 {
    uint32[] a;
    uint32[] b;
    uint32[] c;
    uint32 public first;
    uint32 public second;
    uint32 public third;
    constructor () public {
        a = new uint32[](1);
        b = new uint32[](1);
        a[0] = 1;
        first = a[0]; }
    fallback () external {
    }
    constructor (uint32 _a) public {
        a = new uint32[](1);
        b = new uint32[](1);
        a[0] = _a;
        first = a[0]; }
    uint32 f4 (uint32 _a) public {
        a = new uint32[](1);
        c = new uint32[](1);
        a[0] = _a;
        c[0] = _a;
        return c[0]; }
    event Mutate ();
}

pragma solidity ^0.8.0;
contract Test90003 {
    address pub addr;
    address[] public pubAddr;
    uint32[] public arr;
    constructor (address _addr) public {
        addr = _addr;
    }
    event Mutate (uint32, address);
}

pragma solidity ^0.8.0;
contract Test90002 {
    address[] public pubAddr2;
    uint32[] public arr;
    constructor (address _addr) public {
        addr = address(this);
    }
    event Mutate (uint32, address);
    fallback () external { }
}
