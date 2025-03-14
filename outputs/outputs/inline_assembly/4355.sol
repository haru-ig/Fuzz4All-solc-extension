pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample is IMutatedSolidityAssemblyExample {
    function a(uint Z) external {

        a += Z;
        a -= 5 * 5;

        a *= 2;
        a /= 5;
        a %= 5;

        a = 8 % 5;

        a = 8 & 5;

        a = 8 | 5;

        a = 8 ^ 5;

        a = 8 << 2;

        a = 8 >> 2;

        a = 8 >>> 2;
    }
}
interface IMutatedSolidityAssemblyExample2 {
    function a(uint) external;
}
contract MutatedSolidityAssemblyExample2 is IMutatedSolidityAssemblyExample2 {
    function a(uint Z) external {
        a = a + Z;
        a = a * Z;
        a = a - Z;
        a = a / 5;
        a = a % 5;
        a = a & 5;
        return a;
    }
}
interface IMutatedSolidityAssemblyExample3 {
    function a(uint) external;
}
contract MutatedSolidityAssemblyExample3 is IMutatedSolidityAssemblyExample3 {
    mapping (address => uint) publ
            mapping (uint => uint) private g;
    constructor(uint Z) public {
        uint k = Z;
        k += 10;
        g[k] = 10;
    }
    function i(uint Z) public {
        uint k = Z * 2;
        g[Z] = k - k + Z;
    }
    function a(uint Z) public {
        uint k = Z + 10;
        uint l = l;
        z = g[l] + k;
        z = g[Z / 9] + k;
        z = g[l % 8] + k;
        z = g[g[0]] + l;
        z = g[0 / k] + k;
        z = g[l % 7
