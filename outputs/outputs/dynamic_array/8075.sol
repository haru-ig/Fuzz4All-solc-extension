pragma solidity ^0.8.0;
contract Mutate{
    address public toAdd;
    IFabric private ifc = new Fabric;
    function mutate() public {
        ifc.appendBytes();
    }
}
