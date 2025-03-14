pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint40 public a;
    address public b;
    address public c;
    constructor(address Z) public {
        a += IMutatedSolidityAssemblyExample(Z).a(IMutatedSolidityAssemblyExample(Z).a(a));
        b += address(IMutatedSolidityAssemblyExample(Z).a(IMutatedSolidityAssemblyExample(Z).a(b)));
        c += address(IMutatedSolidityAssemblyExample(Z).a(IMutatedSolidityAssemblyExample(Z).a(c)));
    }
}
