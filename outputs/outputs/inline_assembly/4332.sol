pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample is Mutated {
    constructor(uint Z) public  {
        assembly {
            selfdestruct(e)
        }
    }
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        a += Z;
        b += Z + 10;
        c += Z;
        d += Z + 55;
        e = msg.sender;
        f[e] = 321;
    }
}
interface IMutatedMutatedSolidityAssemblyExample {
    function a(uint) external;
    function b(uint) external returns (uint);
}

pragma solidity ^0.8.0;
contract MutatedMutatedSolidityAssemblyExample is Mutated, IMutatedMutatedSolidityAssemblyExample  {
    constructor(uint Z) public {
        a += Z;
        b += Z + 10;
        c += Z;
        d += Z + 55;
        e = msg.sender;
        f[e] = 321;
    }
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        a += Z;
        b += Z + 10;
        c += Z;
        d += Z + 55;
        e = msg.sender;
        f[e] = 321;
    }
    function a(uint) external {
        assembly {
            a += Z
            b += Z + 10
            c += Z
            d += Z + 55
        }
    }
    function b(uint) external returns (uint) {
        assembly {
            return a
            return b
        }
    }
    function c(uint) public view returns (uint) {
        assembly {
            return a + a
            return c + b + b
        }
    }
}
