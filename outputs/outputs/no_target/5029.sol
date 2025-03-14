pragma solidity ^0.8.0;
contract A {
   function f(int a) public pure returns(address) {
        bytes memory b;
        a = a + a;
        return new A(b, a);

   }
}
contract B {
   function to(address a) pure public returns(bool) {
            return false;
   }
}
contract C {
    uint256 x;
    A b;


    function f(int a) public returns(address) {
        if (a < 0) {
            x = 1;
            b = new A(byte(0), 1);
            return b;
        }
        return b;
    }
}
contract D {
    C cd;
    bool d;

    function E() public returns(address) {
        cd = new C();
        d = cd.f(-1);
        return cd;
    }
    function f(int a) public returns(address) {
        return cd;
    }
}
contract E  {

    function f(int a) public pure returns(address) {
       C cd = new C();
       return cd;
    }
}
contract F {
    uint256 x;
    bytes b;
    bool f;
    explicit conversion (byte2 b0) public pure returns(address) {
        return x == 0x10? new A(b0, 1) : new A(b, 1);
    }
}
contract G {
    uint256 x;
    bytes b;
    address ad;
    address a;
    function f() public returns(address) {return f()}
    function F() public pure returns(contract A a) {
       a = new A(0x25, 1);
       f = true;
    }
}
contract H {
    mapping (address => int256) mapping(uint256 => uint256);
    function G(uint25
