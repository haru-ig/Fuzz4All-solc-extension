pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample {

    IMutatedSolidityAssemblyExample public immutable iasmExample;

    constructor(MutatedSolidityAssemblyExample _asm) public {
        iasmExample = _asm;
        uint _x = iasmExample.a(2);
    }
}


 pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample2 is IMutatedSolidityAssemblyExample, ISolidityAssemblyExample {
    IMutatedSolidityAssemblyExample22 internal immutable iasmExample;

    constructor(IMutatedSolidityAssemblyExample22 _asm) public {
        iasmExample = _asm;
        uint _x = iasmExample.a(2);
        emit Test(0xdeadcafe);
    }
}

pragma solidity ^0.8.0;
contract SolidityAssemblyExample2 {
    IMutatedSolidityAssemblyExample22 internal immutable iasmExample;
    uint public e;
    uint public f;
    uint public g;

    constructor(uint Y, uint _z) public {
        e = Y;
        iasmExample = new IMutatedSolidityAssemblyExample22(uint(-_z));
        uint _x = iasmExample.a(2);
    }
}
contract MutatedSolidityAssemblyExample2 {
    bool public b;
    uint public c;
    uint public d;
    uint public e;

    constructor(uint _y, IMutatedSolidityAssemblyExample22 _m, uint _z) public {
        c = _y;
        d = _z;
        b = false;
        if (!asm2() & iasmExample.a(c) & iasmExample.a(b)) {
            iasmExample = _m;
            uint x = iasmExample.e;
        }
    }
}
