pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent12 is SemanticallyNotEquivalent11 {
    uint32 z = 1 * ^uint32(uint160(0x80000000000000)));
}

pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent13 is SemanticallyNotEquivalent11 {
    uint32[2] arr= 1 * uint32[](2);
}

pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent14 is SemanticallyNotEquivalent11 {
    bool s = true;
    uint32[33] b = x * uint32[](4 + 10);
}
pragma solidity ^0.8.0;

contract SemanticallyNotEquivalent15 is SemanticallyNotEquivalent12 {
    uint64[0] a = ^uint64[](2);
}
pragma solidity ^0.8.0;

contract SemanticallyNotEquivalent16 is SemanticallyNotEquivalent13 {
    uint64[4] arrc = x * uint64[](1 + 3 + 2 + 2);
}
pragma solidity ^0.8.0;
