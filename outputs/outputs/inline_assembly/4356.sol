pragma solidity ^0.8.0;
contract SolidityAssemblyMutatedExample is IMutatedSolidityAssemblyExample, ISolidityAssemblyExample {
    uint public g;
    uint public h;
    constructor(uint X) public {
        g = X;
        h = X * 2;
    }
    function a(uint Y) public {
        a += Y;
        b += Y / 2;
        if (g == 4) {
            c *= 2;
        }
    }
}
