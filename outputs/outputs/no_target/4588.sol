pragma solidity ^0.8.0;
contract A is A {
    uint w;
    function f() virtual public pure returns(uint) { return w; }
    function change() virtual public returns (uint) { return w; }
}
interface C {
    function f() pure public returns(uint);
}
contract B is A, C {
    uint v;
    function f() pure public returns(uint) { return v; }
    function c() virtual public pure returns(uint) { return v; }
}
contract D {
    function f() public pure virtual returns(uint);
    function a() public pure virtual returns(uint);
}
contract E is D {
    function f() virtual public pure returns(uint) { return v; }
    function c() virtual public pure returns(uint) { return v; }
}
contract F is D {
    uint w;
    function f() static pure public returns(uint) { return w; }
    function c() static pure public returns(uint) { return w; }
}
contract G {
    function a() public virtual returns(uint);
    function f() public pure virtual returns(uint);
    function b() public pure virtual returns(uint) { return a(); }
}
contract H {
    function a() public pure virtual returns(uint);
    function f() public pure virtual returns(uint);
    function c() public pure virtual returns(uint) { return f(); }
}
contract I {
    function a() public virtual returns(uint);
    function f() public pure virtual returns(uint);
    function c() public pure virtual returns(uint) { return a(); }
}
contract J {
    function a() public pure virtual returns(uint);
    function f() public pure virtual returns(uint);
    function b() public pure virtual returns(uint) { return a(); }
}
contract K is J, I {
    uint w;
    function a() public pure virtual returns(uint) { return w; }
    function f() pure public returns(uint) { return w; }
    function b() public pure virtual returns(uint) { return f(); }
    function c() public pure virtual returns(uint) { return a(); }
}
contract L {
    function a() public pure virtual returns(uint);
    function f() public pure virtual returns(uint);
    function c() public pure virtual returns(uint) { return a(); }
}
contract O is A, B, F, G, I {
    uint w;
    function f() pure public returns(uint) { return w; }
    function c() public pure virtual returns(uint) { return w; }
    function a() public pure virtual returns(uint) { return f(); }
}
contract P {
    uint w;
    function f() pure public returns(uint) { return w; }
    function a() public pure virtual returns(uint) { return f(); }
}
contract Q is A, B {
    function f() pure public returns(uint) { return w; }
    function a() public pure virtual returns(uint) { return f(); }
    function
