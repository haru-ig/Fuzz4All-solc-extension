pragma solidity ^0.8.0;
contract MutatedContract {
    uint public mutatedResult = 0;
    uint constant minValue = 0;
    uint constant increment = 1;
    uint constant maxValue = 99;
}
contract Contract{
    MutatedContract public mutableC1;
    MutatedContractV2 public mutableC2;
    MutatedContract public immutableC3;
    MutatedContract public volatileC4;
    MutatedContract public volatileC5;
    MutatedContract public invariantC6;
    MutatedContract public staticC7;
    MutatedContract public constructorC8;
    MutatedContract public constructorC9;
}
contract Solidity080 {
    function main() public pure returns (uint) {
        (uint(Contract(address(this)).mutatedResult) < Contract(address(this)).minValue? Contract(address(this)).mutatedResult += Contract(address(this)).increment: Contract(address(this)).mutatedResult += Contract(address(this)).increment;
        uint y = Contract(address(this)).minValue + 1;
        return 1;
    }
}
