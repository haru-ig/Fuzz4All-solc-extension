pragma solidity ^0.8.0;
contract Mutation18 {
    function f(uint32 _x) public {
        a[4] = 1;
        a[2] = _x + 2;
        a[3] = a[4];
    }
}
contract EquivalentMutated18a is EquivalentMutated18 {
    uint[] p;
}
contract EquivalentMutated18b is EquivalentMutated18 {
    uint[] storage p;
}
contract EquivalentMutated18c is EquivalentMutated18 {
    uint[] constant p;
}
contract EquivalentMutated18d is EquivalentMutated18 {
    uint[] public p;
}
contract Mutated18 is Mutation18 {
    function g() public {
        a[0] = 0;
        a[1] = 1;
        a[5] = 3;
        a[2] = 2;
        a[4] = 0;
        p[1] = 5;
        p[2] = 4;
        p[0] = 2;
        p[3] = 3;
        p[4] = 0;
    }
}
contract EquivalentMutated18c2 is EquivalentMutated18c {
    uint[6] c;
}
