pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExampleMutator {
    function a(address t) public {
        IMutatedSolidityAssemblyExample(t).a(a);
    }
}
