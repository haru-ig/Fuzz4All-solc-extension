pragma solidity ^0.8.0;
contract NoChange {
    uint immutable i = 10;
    uint internal immutable II = 0;
    uint constant I =  1;

    function mod(uint a) public view returns (uint) {
        return a % I;
    }

    function mod_(uint a) public view returns (uint) {
        return a % II;
    }
}
contract AllChanges {
    function mod(uint a) public view returns (uint) {
        return a % I;
    }

    function mod0_1_(uint a) public view returns (uint) {
        return a % I + a;
    }

    function mod1_3_(uint a) public view returns (uint) {
        return a % I - a;
    }

    function mod2_8_(uint a) public view returns (uint) {
        return a % I * I;
    }

    function mod3_16_(uint a) public view returns (uint) {
        return a % I * I * I;
    }

    function mod_(uint a) public view returns (uint) {
        return a % I * II;
    }

    function mod11_5_(uint a) public view returns (uint) {
        return a % I * I % 5;
    }
}

contract C {
    Basic x;
    function f1() public returns (uint) {
        return x.mod;
    }
    function f2(Basic x) public returns (uint) {
        return x.mod0_1;
    }
    function f3(Basic x) public returns (uint) {
        return x.mod1_3;
    }
    function f4(Basic x) public returns (uint) {
        return x.mod2_8;
    }
    function f5(Basic x) public returns (uint) {
        return x.mod3_14;
    }
    function f6(Basic x) public returns (uint) {
        return x.mod_;
    }
    function f7(Basic x) public returns (uint) {
        return x.mod11_5;
    }
}

interface I {
    uint mod(uint x) external returns (uint);
    uint mod0_1(uint x) external returns (uint);
    uint mod1_3(uint x) external returns (uint);
    uint mod2_8(uint x) external returns (uint);
    uint mod3_14(uint x) external returns (uint);
    uint mod_(uint x) external returns (uint);
    uint mod11_5(uint x) external returns (uint);
}
contract G {
    I i;

    function gk(Basic x) public returns (uint) {
        return i.mod;
    }
}
