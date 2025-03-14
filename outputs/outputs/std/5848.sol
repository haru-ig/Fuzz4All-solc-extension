pragma solidity ^0.8.0;
contract Mutated19Memory {
    uint32 a;
    uint32 b;
    function mutated19() public pure returns (uint32) {
        (a, b) = (uint32(2), uint32(3));
        return b;
    }
}

pragma solidity ^0.8.0;
contract Mutated20Address {
    address a;
    uint32[2] b;
    function mutated20(uint32[2] memory a) public pure returns (address) {
        return a[0];
    }
}

pragma solidity ^0.8.0;
contract Mutated21Address {
    public (address a);
    uint32[2] b;
    function mutated21() public pure returns (address) {
        address x = a;
        return x;
    }
}

pragma solidity ^0.8.0;
contract Mutated22Address {
    address a;
    uint32[2] b;
    function mutated22(uint32[2] memory a) public pure returns (address) {
        a[0] = a[1];
        return a;
    }
}

pragma solidity ^0.8.0;
contract Mutated23Address {
    uint32 x;
    uint32 z;
    uint32[2] c;
    uint32[2] [3] d;
    uint32 f;
    uint32[1] h;
    uint32[4] i;
    uint32[2] j;
    uint32 t[3];
    function mutated23(uint32[2] memory memory b) public pure returns (uint32, uint32) {
        x = b[0];
        d[0] = memory;
        i[1] = memory;
        (z, memory) = a:a;
        (z, memory) = a:a;
        (a, memory) = memory:purity;
        memory;
        memory;
        (c, memory) = a:memory;
        t = memory;
        c = memory;
        j = memory;
        j;
        memory;
        memory;
        (t, memory) = b:b;
        t = memory;
        j;
        memory;
        (memory, memory) = memory:c;
        c;
        (a, memory
