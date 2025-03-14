pragma solidity ^0.8.0;
interface Mutability {
    function mutate(address user, uint256 value) external;
}
contract MutabilityExample10 is Mutability {

    constructor() {}

    function mutate(address _user, uint256 _value) external {
       _user.call{value: _value}("");
    }
}
contract MutabilityExample11 {
    function example() public {
         MutabilityExample10 mutabilityExample10 = MutabilityExample10(0x526fd0D824332B3904A83493509C2C626a9B5D7B);
         mutabilityExample10.mutate(address(this), 4534);
    }
}
