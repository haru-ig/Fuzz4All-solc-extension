pragma solidity ^0.8.0;
contract Main3 {
    enum E { X, Y, Z };
    static function f(E e, uint t) internal pure {
        for (uint i=0 ; i<t ; ) {
            f(e, 0);
        }
    }
    struct Struct {
        E s;
        uint i;
    }
}
