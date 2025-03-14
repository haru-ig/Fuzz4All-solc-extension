pragma solidity ^0.8.0;
contract Mutate1 {
    uint32 private x;
    uint32 public y;
    function noPublicModification() public {
        x = x + 1;
        y = y + 1;
    }
}
contract Mutate2 {
    function noPublicModification() nopublic {
        x = x + 1;
        y = y + 1;
    }
}
pragma solidity ^0.8.0;

contract Mutate3 {
    struct Mutate1 {
        uint32 a;
        uint32 b;
    }
    enum Mutation { One, Two, Three };
    function getResult(Mutate1 memory m) public pure returns (Mutate1 memory) {
        Mutate1 memory res;
        if(m.a == 0 && m.b == 0) return res;
        if(m.a == 0) {
            res.a = m.b + 1;
            res.b = m.b + 1;
        } else if(m.b == 0) {
            res.a = m.a;
            res.b = m.a;
        } else {
            res.a = m.a;
            res.b = m.b;
        }
        return res;
    }
    function getResult2(Mutate1 memory m) public pure returns(Mutate1 memory) {
        Mutate1 memory res;
        if(m.a == 0 && m.b == 0) return res;
        if(m.a == 0) {
            res = m;
        } else if(m.b == 0) {
            for (uint256 index = 0; index < m.a; index++) {
                res = res + m;
            }
        } else {
            for (uint256 index = 0; index < m.a; index++) {
                res = res + m;
            }
        }
        return res;
    }
}
pragma solidity ^0.8.0;
contract Mutate4 {
    struct Mutate1 {}

    struct Mutate2 {}

    struct Mutate3 {}

    function getResult(Mutate1 memory m) public pure returns(Mutate1 memory) {
        Mutate1 memory res;
        if(m.a == 0) {
            res = m;
        } else {
            res.a = 0;
            res.b = 0;
        }
        for(uint256 index = 0; index < m.a; index++) {
            res = res + m;
        }
        return res;
    }
    function getResult2(Mutate1 memory m) public pure returns(Mutate1 memory) {
        Mutate1 memory res;
        if(m.a == 0) {
            res.a = 0;
            res.b = 0;
