pragma solidity ^0.8.0;
contract IMutatedSolidityAssemblyExample {
    function a(uint X) public {
        a += X;
    }
}
contract SolidityAssemblyExample {
    uint public a = 5;
    uint public b = 32;
    uint public c = 4;
    uint public d = 13;
    address public e = msg.sender;
    mapping (address => uint) public f;
    constructor() public {
        a++;
        b = b + 2;
        c++;
        d--;
        e = msg.sender;
        f[e]++;
    }
    function a(uint X) public {
        a += X;
    }
}

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
        c += Z;
        d += Z + 55;
        e = msg.sender;
        f[e] = 321;
    }
    function a(uint X) public {
        a += X;
    }
}
contract IMutatedSolidityAssemblyExample is IMutatedSolidityAssemblyExample {
    function a(uint X) public {
        a += X;
    }
}
contract SolidityAssemblyExample is ISolidityAssemblyExample {
    uint public a = 5;
    uint public b = 32;
    uint public c = 4;
    uint public d = 13;
    address public e;
    mapping (address => uint) public f;
    constructor() public {
        a++;
        b = b + 2;
        c++;
        d--;
        e = msg.sender;
        f[e]++;
    }
    function a(uint X) public {
        a += X;
    }
}
contract MutatedSolidityAssemblyExample is SolidityAssemblyExample, IMutatedSolidityAssemblyExample {
    constructor (uint Z) SolidityAssemblyExample(Z) public {
        c++;
        d--;
        e = msg.sender;
    }
}<fim_middle>contract MutatedSolidityAssembly
