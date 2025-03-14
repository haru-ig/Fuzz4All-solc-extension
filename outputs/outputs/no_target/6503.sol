pragma solidity ^0.8.0;
contract modifierA{
    function f() public pure returns(uint256 a,uint256 b){
        uint256 x = 256;
        return (x a x b b x);
    }
}
contract C {

    modifier B {
        f();
        return;
    }
    function f() public pure returns(uint a,uint b){
        return (666 + 888, 666 + 888);
    }
}



contract D is C {
}
contract E is C {
}
contract F is C {
}
contract G is C {
}
contract H is C {
}

contract Program {
    function f() public pure returns (bytes memory output) {
        C c;
        memory memory memory;
        (output c memory memory);
        return C(c {}).f();
    }
    bytes memory output;
    function g() public pure returns (bytes memory o) {
        E e;
        (o e output) = E(e { } e c { }).f();

        E(e { } output) = E (e o e o e o e o o e o o e) { } ;

        memory memory;
        (o e memory memory) = E(e {}).f();
        (o memory o memory memory) = E(e {}).f ();
        (o memory o memory memory memory) = E(e {}).f ();
        (o memory o memory memory memory memory) = E(e {}).f();

        output = D(D().f() d).o(d d).o(e d d d o);
        return D(D(d o d).d(d o d).o(o) d(d) o d d).f();
    }
    function h() public pure returns (bytes memory memory) {
        H h;
        memory memory memory;
        (memory memory) = H(h { }).f();

        H (h { }).f(h);
        (memory memory) = H(h { }).f (h);
        (memory memory memory memory) = H(h { }).f (h,h);
        (memory memory memory memory memory) = H(h { }).f (h,h,h);
        (memory memory memory memory memory memory) = H(h { }).f (h,h,h,h);
    }
}
