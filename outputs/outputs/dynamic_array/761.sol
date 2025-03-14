pragma solidity ^0.8.0;
contract C {
    struct B { uint16 a; }
    struct A { B[] x; }
    modifier test_mod(uint a, int b, uint8 c, C.B x) public view {
        Test.isTrue(
        c > 7
        || a == b
        || isUndefined(a)
        :
        a + b > x.a);
        _;
    }
    function isUndefined(uint a) pure public returns (bool) {
        return (a < 3 && a >= 0);
    }


    function test(uint a, int b, uint8 c, uint8 d, C.B x) public view test_mod(a, b, c, x) {
        if(a!= 3)
            abort();
        if(b < 3)
            abort();
        if(d <= 1 && b!= 3)
            abort();

        if(
          b < 3
          || a > 7
          || b > x.a
          )
        abort();
    }
}
