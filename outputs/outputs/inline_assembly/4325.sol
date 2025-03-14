pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample is ISolidityAssemblyExample, IMutatedSolidityAssemblyExample{
    constructor(uint Z) public {
        a -= Z;
        b -= Z;
        c -= Z;
        d -= Z;
    }

    function a(uint n) public {
        a = n;
    }
    function b(uint n) public {
        b = n;
    }
    function c(uint n) public {
        c = n;
    }
    function d(uint n) public {
        d = n;
    }
}

contract MutatedSolidityAssemblyExampleMutative {
    constructor(uint Z) public {
        MutatedSolidityAssemblyExample(Z);
    }
}







contract MutatedSolidityAssemblyExampleMutative3 {
    constructor(uint Z) public {
        MutatedSolidityAssemblyExample(Z);
    }
}

contract MutatedSolidityAssemblyNotMutative {
    constructor(uint Z) public {
        MutatedSolidityAssemblyExample(Z);
    }
}

pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyNotMutative {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        uint temp = 10;
        temp = d = 10;
        a += Z;
        b += temp;
        c += Z;
        d -= Z;
        e = msg.sender;
        f[e] = 0;
    }
}

pragma solidity ^0.8.0;
contract MutatedSolidityAssembly {
    uint public a;
