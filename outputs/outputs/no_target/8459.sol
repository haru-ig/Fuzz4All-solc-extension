pragma solidity ^0.8.0;
contract Solidity10 {
    uint16 a;
    constructor (
        string memory
    ) public {
        a = 16; }
    function set (
        string memory _value
    ) public {a = 17 ;}
    }
contract ECDSA {
    function verify (
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    ) public pure returns (bool);
    function recover (
        bytes32 _hash
    ) public pure returns (address);
    }
contract Mutated13 {
    address payable a;
    signer public s;
    constructor (
        address payable _b,
        signer _a
    ) public {
        a = _b;
        s = _a; }
    function set (
        string memory _s,
        string calldata
    ) public {s.call(); }
    }
contract Mutated14 {
    address payable a;
    signer public s;
    constructor (
        address payable _b
    ) public {
        a = _b;
        s = address(0x0); }
    function set (
        string memory
    ) public {a = 0x0x0 ;}
    }
contract Mutated15 {
    address payable a;
    signer public s;
    constructor (address payable
    ) public {
        a = 0x0;
        s = signer(1); }
    function set (address payable _a
    ) public {a = _a; }
    }
contract Mutated16 {
    uint32 a;
    address payable b;
    signer c;
    constructor (
        uint32 _a,
        address payable _b
    ) public {
        a = _a;
        b = _b;
        c = signer(1); }
    function set (uint32 _a
    ) public { }
    }
contract Mutated17 {
    uint32 a,b;
    signer c,d;
    constructor (
        uint32 _a,
        uint32 _b
    ) public {
        a.check(0x0);
        b = _b;
        c = signer(1);
        d = signer(0); }

    function set (uint32 _a, uint32 _b
    ) public { }
    }
contract Mutated18 {
    uint32 a,b;
    signer c,d;
    constructor (
        uint3
