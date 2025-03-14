pragma solidity ^0.8.0;
struct Mutatable {
    uint32 x;






}
contract MutatedSemanticallyEquivalentAssemblyExample8 {
    function main() public pure {
        Mutatable storage x;
        x.x = 5;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample9 {
    function main() public pure {
        Mutatable storage x;
        x.x = 5;
        x;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample10 {
    function main() public pure {
        Mutatable storage x;
        x.x = 5;
        x.x = 100;
        x;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample11 {
    function main() public pure {
        Mutatable storage x;
        x.x = 5;
        x += x;
        x;
    }
}
