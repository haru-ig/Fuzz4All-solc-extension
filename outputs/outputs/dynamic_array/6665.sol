pragma solidity ^0.8.0;
contract T8FA_mutator_38 {
    address payable s1 = payable(0x207600);
    event e1(uint val0, address s1);
    void f1() {
        val1 = 10;
        (a, val0) = (t1(), val0);
        e1(val0, s1);
    }
    void f2(address payable a_) {
        emit e1(a_, s1);
    }
    address payable t1() { return s1; }
    function g() public {
        return s1;
    }
}
