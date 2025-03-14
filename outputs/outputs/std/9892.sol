pragma solidity ^0.8.0;
contract S8Mutated7 {
    uint8 a;
    uint8 b;
    uint8 c;
    uint8 d;
    uint8 e;
    uint8 f;
    constructor () {
        change1();
        change2();
        change3();
        change4();
        change5();
        change6();
    }
    function change1() public {
        a--;
        c--;
        b--;
        e--;
        f--;
    }
    function change2() public {
        a--;
        c--;
        e--;
        f--;
    }
    function change3() public {
        e--;
        c--;
        d--;
        b--;
        f--;
    }
    function change4() public {
        e--;
        a--;
        d--;
        b--;
        f--;
    }
    function change5() public {
        e--;
        a--;
        b--;
        c--;
        f--;
    }
    function change6() public {
        e--;
        b--;
        c--;
        a--;
        f--;
    }
    function change7() public {
        e--;
        b--;
        c--;
        d--;
        f--;
    }
}
