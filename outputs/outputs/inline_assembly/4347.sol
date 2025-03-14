pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        a += Z;
        b += Z + 10;
        c += Z + 1;
        d += Z + 20 + 50;
        e = msg.sender;
        f[e] = 321;
    }

    function b(uint) public {
        a;
        b;
        c;
        d;
        e;
        f;
    }

    function c(uint) public {
        a;
        b;
        c;
        d;
        e;
        f;
    }

    function d(uint) public {
        a;
        b;
        c;
        d;
        e;
        f;
    }

    function e(uint) public {
        a;
        b;
        c;
        d;
        e;
        f;
    }

    function g(uint) public {
        a;
        b;
        c;
        d;
        e;
        f;
    }
}
interface IOtherMutatedSolidityAssemblyExample {
    function a(uint) external;
}
interface IMutatedSolidityAssemblyExample2 {
    function a(uint) external;
    function b() external view returns(uint);
}

pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    bytes32 public aBytes32;
    bytes32 public bBytes32;
    bytes32 public cBytes32;
    bytes32 public dBytes32;
    bytes32 public eBytes32;
    bytes32 public fBytes32;
    constructor(uint Z) public {
        a += Z;
        b += Z + 10;
        c += Z;
        d += Z + 55;
        e = msg.sender;
        f[e] = 321;
        aBytes32 = (432).__toBytes32();
        bBytes3
