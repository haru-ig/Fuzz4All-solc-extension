pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample6 {
    mapping(uint256 => uint256) public m;
    function main() public pure {
        uint a;
        uint b;
        uint c;
        uint d;
        uint e;
        uint f;
        uint g;
        uint h;
        m[1] += b;
        b += a;
        a += d;
        d += b;
        b += c;
        c += d;
        d += b;
        b += a;
        a += e;
        e += c;
        c += e;
        e += c;
        d += e;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample7 {
    struct T { uint x; uint y; uint z; uint w; }
    function main() public pure {
        T memory t = T{1, 2, 3, 1};
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample {
    function main() public pure {
        MutatedSemanticallyEquivalentAssemblyExample4 example4;
        MutatedSemanticallyEquivalentAssemblyExample5 example5;
    }
}
