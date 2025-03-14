pragma solidity ^0.8.0;
contract S8Mutated6 {
    uint8 a;
    uint8 b;
    uint8 c;
    uint8 d;
    uint8 e;
    uint8 f;
    constructor () {
        a = 100;
        b = 100;
        c = 100;
        d = 100;
        e = 100;
        f = 100;
    }
    function change1() public {

        b--;
        d--;
        f--;
    }
    function change2() public {

        b++;
        d--;
        f--;
    }
    function change3() public {

        b++;
        c--;
        f--;
    }
    function change4() public {

        b++;
        c++;
        d++;
    }
    function change5() public {

        d--;
        c--;
        f--;
    }
    function change6() public {

        d--;
        e--;
        f--;
    }
}
