pragma solidity ^0.8.0;
struct Mutable {
    uint256 x = 5;
}
contract MutatedSemanticallyEquivalentAssemblyExample10 {
    function main() public pure {
        Mutable memory x;
        x.x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample11 {
    function main() public pure {
        Mutable memory x;
        x.x = 5;
        x.x++;
    }
}

pragma solidity ^0.8.0;
struct Mutable1 {
    uint256 x = 5;
}
contract MutatedSemanticallyEquivalentAssemblyExample12 {
    function main() public pure {
        Mutable memory x;
        x.x = 5;
        x.x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample13 {
    function main() public pure {
        Mutable memory m;
        Inline.assembly {
            m.x = 5;
            m.x++;
        }
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample14 {
    function main() public pure {
        Address storage d = 0x20;
        Inline.assembly {
            x := d;
            x.x++;
        }
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample15 {
    function main() public pure {
        Address storage d = 0x20;
        Inline.assembly {
            x := mload(d);
            x.x++;
        }
    }
}
