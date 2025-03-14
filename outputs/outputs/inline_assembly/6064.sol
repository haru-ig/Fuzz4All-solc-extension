pragma solidity ^0.8.0;
struct Immutable {
    uint256 x;
}
contract MutatedSemanticallyEquivalentAssemblyExample8 {
    Immutable memory im;
    function main() public pure {
        im.x = 6;
    }
}
