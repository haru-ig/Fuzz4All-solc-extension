pragma solidity ^0.8.0;
contract Simple {
    uint[5] a;
    function f() public returns (uint) {
        for (uint i = 0; i < a.length; i++) {
            a[i] = 256;
        }
        return a.length;
    }
}
pragma solidity ^0.8.0;
contract Mutability {
    function change() public {
        a[0] = 0;
    }
}
   contract Complex_Mutability {
    uint[5] a;
    function get() public returns (uint) {
        for (uint i = 0; i < 10; i++) {
            a[i] = 0;
        }
        return a.length;
    }
    function change() public {
        for (uint i = 0; i < 5; i++) {
            a[i] = 0;
        }
    }
}
