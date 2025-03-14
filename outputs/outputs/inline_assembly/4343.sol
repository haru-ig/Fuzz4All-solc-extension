pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;

    constructor(uint Z) public {
        a += Z * 10;
        b += a;
        require(b%20 == 0);
        c += Z;
        d += Z;

    }
    function a(uint Z) public {
        a += Z + 66;
        b += Z + 10;
        b %= 30;
        require(a%20 == 0);
        c += Z;
        d += Z + 55;

        d += Z;
    }
}
function mutateAndCall(uint i) public returns(uint) {
    uint Z = i%100000;
    mutate(Z);
    MutatedSolidityAssemblyExample assemblyInstance = MutatedSolidityAssemblyExample(addresses.mutateAndCall());
    assemblyInstance.a(Z);
}








contract MutatedContractExample is MutatedSolidityAssemblyExample {
    constructor(uint Z) public {
        mutate(Z);
        MutatedSolidityAssemblyExample assemblyInstance = MutatedSolidityAssemblyExample(addresses.mutateAndCall());
        assemblyInstance.a(Z);
    }
}
mapping (address => IMutatedSolidityAssemblyExample) public addresses;
mutableregistry(ISolidityAssemblyExample, "SolidityAssemblyExampleRegistry")
addresses[0] = MutatedContractExample(1);

ISolidityAssemblyExample _SolidityAssemblyExample = IPseudoSolidityAssemblyExample(addresses[0]);
uint valueTransferred = _SolidityAssemblyExample.a(666);
uint value = 12
