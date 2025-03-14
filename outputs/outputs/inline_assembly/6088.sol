pragma solidity ^0.8.0;
struct Immutable {
  uint256 x;
}
contract MutatedSemanticallyEquivalentAssemblyExample10 is Immutable {
    function main() public pure {
        x.x++;
        x.x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample11 is Immutable, Mutated {
    function main() public pure {
        x.x++;
        x.x++;
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample12 is Immutable {
    function main(uint a) public pure {
        uint memory b = 0;
        inline_assembly_modifier(a, b);
    }

    function inline_assembly_modifier(uint a, uint b) private pure {
        a += 1;
        b += 1;
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample13 is Immutable {
    function main(uint a) public pure {
        uint[] memory b = [1, 2, 3];
        inline_assembly_mutable_modifier(a, b);
    }

    function inline_assembly_mutable_modifier(uint a, uint[] memory b) private pure {


        a += 1;
        a += 2;
        a++;
        a++;
    }
}
