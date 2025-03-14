pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample14 {
    struct Mutated {
        uint y;
    }
    function main() public pure {
        Mutated memory x;
        x.y+=2;
        x.y++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample15 {
    struct Mutated {
        uint z;
    }
    function main() public pure {
        Mutated memory x;
        x.z+=2;
        x.z++;
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample16 {
    struct Mutated {
        uint x;
    }
    function main() public pure {
        Mutated memory x;
        uint y;
        y = 2;
        x.x = y;
        x.x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample17 {
    struct Mutated {
        uint x;
    }
    function main() public pure {
        Mutated memory x;
        uint y;
        x.x += 1;
        x.x++;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample18 {
    struct Mutated {
        uint x;
    }
    function main() public pure {
        Mutated memory x;
        uint y;
        uint z;
        y = 2;
        x.x += 1;
        x.x+=1;
    }
}

pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample19 {
    struct Mutated {
        uint x;
    }
    function main() public pure {
        Mutated memory x;
        uint [24] memory z;
        for(uint i=0;i<24;i++){
            z[i] = i;
        }
        for(uint i=0;i<20;i++){
            x.x += 1;
        }
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample20 {
    struct Mutated {
        uint x;
    }
    function main() public pure {
        Mutated memory x;
        uint [24] memory z;
        for(uint i=0;i<24;i++){
            z[i] = i;
        }
        uint [16] memory y;
