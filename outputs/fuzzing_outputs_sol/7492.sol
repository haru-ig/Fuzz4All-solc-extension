pragma solidity ^0.8.0;
contract Modification {
    uint x = 0xDEADBEEF;
    function f1() public {
        Fallback myfunc = new Fallback();
    	myfunc.f1();
    }
    function f2() public {
        Fallback myfunc = new Fallback();
    	myfunc.f1();
    }
}
