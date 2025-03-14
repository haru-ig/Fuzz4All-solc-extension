pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
   constructor(uint Z) public {
        c -= Z;
        a -= Z + 10;
        b -= Z;
        a--;
        b--;
        d = 2;
        f[msg.sender] = 777;
    }
    function increment(uint Y) public returns (uint) {
        return 1*Y;
    }
    function update() public {
        delete f[msg.sender];
    }
}

pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        c += Z - 1;
        a += Z;
        b += Z + 10;
        a--;
        b--;
        d++;
        f[msg.sender] = 199;
    }
    function increment(uint Y) public returns (uint) {
        return 3*Y;
    }
    function update() public {
        delete f[msg.sender];
    }
}


pragma solidity ^0.8.0;
contract SolidityAssemblyExample {

    struct ResultInfo {
        uint A;
        uint B;
        uint C;
        uint D;
        uint E;
        uint F;
    }
    uint public a;
    uint public b;
    uint c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {

        c -= Z;
        c += Z * 10;
