pragma solidity ^0.8.0;
contract L4 {
    uint constant initialx = 0x123456789ABCABC;
    uint constant initialy = 0xFEEF123456789ABE;
    function f() public pure returns (uint x) {
        uint _tmp1 = initialx ^ 0xDEADBEEF12345678;
        uint _tmp2 = f() - initialy + 0x123456789ABCABC;
        uint _tmp3 = f() + _tmp1 + 0xFEEF123456789ABC;
        uint _tmp4 = _tmp3 ^ initialx + initialx ^ initialy + _tmp1;
        return initialy - _tmp2 + _tmp4 + _tmp3 + initialy + initialy + initialx + initialx ^ initialy + _tmp4 - f() + initialy + initialy;
    }
}
contract Demo {
    function demo() public {
        L1 lib = new L1(1, 5, "Hello");
        require(lib.returnInt("Hi") == 0x8004800a, "L1");
        L2 obj = new L2("I'm a contract");
        require(obj.l1() == "I'm a contract", "L2");
        L3 lib2 = new L3(5, 1);
        require(lib2.f() == 15, "L3");
        L4 obj2 = new L4();
        require(obj2.f() == 27, "L4");
    }
}
