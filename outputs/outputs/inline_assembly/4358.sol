pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample is IMutatedSolidityAssemblyExample, SolidityAssemblyExample {
    uint public z1;
    uint public z2;
    uint public z3;
    uint public z4;
    uint public z5;
    uint public z6;
    uint public z7;

    constructor(uint Z1) public {
        a(Z1 * 16);
        b *=(Z1 + 5);
        c += 66;
        d *=(3*Z1 - 1);
        e = msg.sender;
        z1 = 1;
        z2 = 2;
        z3 = 3;
        z4 = 4;
        z5 = 5;
        z6 = 6;
        z7 = 7;
    }
}
interface ISolidityAssemblyExampleModified {
    function z(uint) external view;
}
interface IMutatedSolidityAssemblyExampleModified {
    function a(uint) external;
}
contract SolidityAssemblyExampleModified is mutated, ISolidityAssemblyExampleModified, IMutatedSolidityAssemblyExampleModified {
    constructor(uint Z) public {
        a(Z);
    }

    function z(uint) external view returns (uint) {
        return z1;
    }
    function a(uint) public {
        z1 = 1;
        z2 = 1 + 2;
        z3 = z1 + z2 + z4;
        z3 += z5 + 2;
        z4 = 15;
        z5 = Z + Z + 0;
        z6 = 2 * Z * 5;
        z7 = Z + 4 + 4;
    }
}

pragma solidity ^0.8.0;
contract SolidityAssemblyExampleModifiers {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    modifier example() {
        a += 15;
        b += 53;
        c *= 5;
        d += 46;
        e = msg.value;
        _;
    }
    modifier setExample() {
        a += 13;
        b += 11;
        c *= 5;
        d += 12
