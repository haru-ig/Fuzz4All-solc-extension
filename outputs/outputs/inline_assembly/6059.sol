pragma solidity ^0.8.0;
struct Immutable {
    uint256 x;
}
contract MutatedSemanticallyEquivalentAssemblyExample6 {
    function main() public pure {
        Immutable memory x;
        x.x = 5;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample7 {
    function main() public pure {
        Immutable memory x;
        x.x = 5;
        x;
    }
}
