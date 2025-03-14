pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample is IMutatedSolidityAssemblyExample {
    constructor(uint Z) public {
        assembly {
        let a := add(x, 1000000000)
        let b := add(a, add(x, 200000000))
        let c := add(b, add(b, 3000000000))
        let d := add(c,add(c,50000000000))
        let e := msg.sender
        let f := add(x, 42)
        }
    }
}
interface IMutatedMutatedSolidityAssemblyExample {
    function a(uint) external;
}
interface ILegacyMutatedMutatedSolidityAssemblyExample is IMutatedMutatedSolidityAssemblyExample {}
contract LegacyMutatedMutatedSolidityAssemblyExample {
    constructor(uint Z) public {

        IMutatedMutatedSolidityAssemblyExample(address(0)).a(Z);
    }
}
contract Contracts {
    function main() public payable {




        address a = address(new MutatedSolidityAssemblyExample(address(0)));
        IMutatedMutatedSolidityAssemblyExample(a).a(2);


        address a2 = address(new LegacyMutatedMutatedSolidityAssemblyExample(address(0)));
        ILegacyMutatedMutatedSolidityAssemblyExample(a2).a(2);



        MutatedSolidityAssemblyExample(address(0)).a(2);


        address a3 = address(new MutatedMutatedSolidityAssemblyExample(address(0)));
        ILegacyMutatedMutatedSolidityAssemblyExample(a3).a(2);
