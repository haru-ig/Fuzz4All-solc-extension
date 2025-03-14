pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample8 {
    function main() public pure {
        Immutable memory x;
        x.x = 24;

        x;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample9 {
    function main() public pure {
        Immutable memory x;
        x.x = 1;

        x = Immutable({ x : 9 });

        x;
    }
}

contract MutatedSemanticallyEquivalentAssemblyExample10 {
    function main() public pure {
        Immutable memory x;
        x.x = 1;
    }
}
