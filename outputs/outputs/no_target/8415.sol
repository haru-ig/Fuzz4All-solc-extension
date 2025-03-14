pragma solidity ^0.8.0;
address A;
contract BasicStorage {
    function func(int x) public { }
}
contract UnsafeStorage {
    address a;
    function func(int x) public {
        a = A();
        a.func(x);
        if (x > 0) {
            a = BasicStorage();
            a.func(x);
        }
    }
    function set() public {
        a = A();
        a.func(x);
        if (x > 0) {
            a = BasicStorage();
            a.func(x);
        }
    }
}
