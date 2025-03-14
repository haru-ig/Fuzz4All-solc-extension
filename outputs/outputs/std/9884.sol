pragma solidity ^0.8.0;
contract S8Mutated6 {
    uint8 a;
    uint8 b;
    uint8 c;
    uint8 d;
    uint8 e;
    uint8 f;
    constructor () {
        a = 99;
        b = 100;
        c = 100;
        d = 100;
        e = 100;
        f = 100;
    }
    function change1() public {
        a++;
        b++;
        c++;
    }
    function change2() public {
        a++;
        b--;
        c--;
    }
    function change3() public {
        a--;
        b++;
        c--;
    }
    function change4() public {
        a--;
        b--;
        c++;
    }
    function change5() public {
        d++;
        e--;
        f++;
    }
    function change6() public {
        d++;
        e++;
        f--;
    }
}
