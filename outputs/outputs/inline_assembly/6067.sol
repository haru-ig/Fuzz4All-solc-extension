pragma solidity ^0.8.0;
struct MutatedSemanticallyEquivalentAssemblyExample8 {


    uint256 x;
    uint256 a;
    uint256 b;
}
contract MutatedSemanticallyEquivalentAssemblyExample9 {
    function main() public pure {
        MutatedSemanticallyEquivalentAssemblyExample8 memory m = new MutatedSemanticallyEquivalentAssemblyExample8;
        m.x = 5;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample10 {
    function main() public pure {
        MutatedSemanticallyEquivalentAssemblyExample8 memory m = new MutatedSemanticallyEquivalentAssemblyExample8;
        m.a = 5;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample11 {
    function main() public pure {
        Immutable memory x;
        x.x = 5;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample12 {
    function main() public pure {
        Immutable memory x;
        x.x = 5;
        x;
    }
}
