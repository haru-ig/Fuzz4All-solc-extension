pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample8 {
    function main() public pure {
        Immutable memory x1;
        uint256 y1;
        y1 = x1.x;
        x1.x =y1;
        x1;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample9 {
    function main() public pure {
        Immutable memory x1;
        uint256 x;
        uint256 y1;
        y1 = x1.x;
        x1.x =y1;
        x = x1.x;
        x1;
    }
}
