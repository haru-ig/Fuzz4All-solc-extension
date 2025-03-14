pragma solidity ^0.8.0;
struct Immutable {
    uint256 x;
}
contract MutatedSemanticallyEquivalentAssemblyExample8 {
    function main() public pure {
        Immutable memory x;
        x.x = 5;
        Immutable storage y = x;
        y.x = 2;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample9 {
    function main() public pure {
        Immutable memory x;
        x.x = 5;
        Immutable storage y = x;
        y.x = 2;
        y;
    }
}
