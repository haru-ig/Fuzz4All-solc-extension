pragma solidity ^0.8.0;
contract Mutated14 {
    function mul(int x) public returns (bool) {
        int a = 1000;
        int b = a / 1000;
    }
}
contract Mutated15 {
    function log0(int x) public returns (bool) {
        int a = 1000;
        int b = log(a)-log(1000);
    }
}
contract Mutated16 {
    function log1(int x) public returns (bool) {
        int a = 1000;
        int b = log(a)-log(1001);
    }
}
contract Mutated17 {
    function log2(int x) public returns (bool) {
        int a = 1000;
        uint a_2 = 1 << a;
        int b = log(a)-log(a_2);
    }
}
contract Mutated18 {
    function log3(int x) public returns (bool) {
        int a = 1000;
        uint a_2 = 2**a;
        int b = log(a)-log(a_2);
    }
}
contract Mutated19 {
    function log4(int x) public returns (bool) {
        int a = 1000;
        int b = log(a)-log(2**31);
    }
}
contract Mutated20 {
    function plus(bool x) public returns (bool) {
        bool a = false;
        bool b = x + a;
    }
}

pragma solidity ^0.8.0;
contract Mutated21 {
    function minus(bool x) public returns (bool) {
        bool a = false;
        bool b = x +!a;
    }
}
