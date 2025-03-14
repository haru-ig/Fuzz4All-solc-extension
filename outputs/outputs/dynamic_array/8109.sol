pragma solidity ^0.8.0;
contract MutatedFabric is Fabric {
    bytes16 public z = "a".bytes();
    function mutateX() public {
        z.append(32);
        z = "a";
    }
}
