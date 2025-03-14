pragma solidity ^0.8.0;
contract ComplexUsecase {
    function mutant(uint8[] calldata a) public returns (uint8 a) {
        a = new uint8[](1);
        a[1] = a[2];
        a = a.concat([]);
        a = a.concat([]);
    }
}
