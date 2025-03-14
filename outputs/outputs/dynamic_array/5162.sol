pragma solidity ^0.8.0;
contract Test31 {
    struct A {
        uint8[10] array;
    }
    function f2(A memory a) public {
        a.array = a.array;
    }
    function f3(A memory a) public {
        a.array = a.array;
    }
}

pragma solidity ^0.8.0;
contract Test32 {
    struct A {
        uint8[10] array;
    }
    function f1(A memory a) public {
        uint8[10] memory tmp;
        a.array = tmp;
    }
    function f2(A memory a) public {
        uint8[10] memory tmp;
        uint8[10] memory tmp_old;
        tmp = tmp_old;
    }
    function f3(A memory a) public {
        uint8[10] memory tmp;
        uint8[5][0] memory tmp_old;
        uint8[10] memory tmp_new;
        tmp = tmp_old[5];
    }
}
