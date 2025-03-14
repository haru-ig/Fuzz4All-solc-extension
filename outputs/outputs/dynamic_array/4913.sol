pragma solidity ^0.8.0;
contract Test73 {
    struct State {
        uint x;
    }
    function foo(uint8[] memory x) public {
        uint[8] memory y;
        x[0]= 8;
    }
}
pragma solidity ^0.8.0;
contract Test71 {
    struct State {
        uint x;
    }
    function foo(uint48[] memory x) public {
        uint[48] memory y;
        x[0]=48;
    }
}
pragma solidity ^0.8.0;
contract Test80 {
    struct S0 {
        uint x;
    }
    struct S1 {
        uint x;
    }
    struct S {
        uint32 t;
        S0 a;
        S1 b;
    }
    function f0(S memory s, uint1 memory p, uint[7] memory x, uint8 memory y) public {
        S memory res = s;
        res.a.x = x[0];
        res.a.x += p;
        uint10 memory z;
        uint10 memory w;
        (z,w) = (s.a.x/w,x[0]+s.a.x/p);
    }
}
pragma solidity ^0.8.0;
contract Test60 {

}
pragma solidity ^0.8.0;
contract Test17 {
    struct Inner {
        uint1 w;
    }
    struct Obj {
        uint32 p;
        Inner i;
    }
    function g0(Obj memory o, uint10 memory y) public {
        Inner memory e;
        e.w = xmul(32, y);
    }
    function f0() public {
    }
    function g1() public {
        Inner memory e;
        e.w += mul10();
        emit MyEvent("MyEvent",e.w);
    }
    pure function g2() public view returns(uint1) {
        Inner memory e;
        e.w = mul10();
        return e.w;
    }
    pure function f1() public pure returns(uint1) {
        return g2();
    }
    pure function f2() public pure returns(uint1) {
        return f1();
    }
    pure function f3() public pure returns(uint1) {
        return f2();
    }
    function f4() public pure returns(xmul(uint10, uint10, 5));
    function f5() public pure returns(mul10());
    function f5(xmul(uint10, uint10, uint
