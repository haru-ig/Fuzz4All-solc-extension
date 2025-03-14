pragma solidity ^0.8.0;
contract Multiply {
	struct T {
	    uint r;
	    T(uint _r){r=_r;}
	}
	constructor() public {}
	modifier add1(T memory t){
	    if (t.r==42){
	        t.r = 0;
	    }else{
	        t.r += 1;
	    }
	    _;
	}
	modifier mod20(T memory t){
	    if (t.r==-20){
	        t.r = 8;
	    }else{
	        t.r -= 1;
	    }
	    _;
	}
	modifier add1042(T memory t){
	    if (t.r==0){
	        t.r = 42;
	    }else{
	        t.r += 1042;
	    }
	    _;
	}
	constructor() public {}
	function calculate(T memory t) public pure {
	    t.r *= t.r;
	    t.r *= t.r;
	    t.r *= t.r;
	    t.r *= t.r;
	    t.r *= t.r;
	    t.r *= t.r;
	    t.r *= t.r;
	    t.r *= t.r;
	    t.r *= t.r;
	    t.r *= t.r;
	}
	function multiply10567(T memory t1, T memory t2) public add1(t1) add1(t1) mod20(t1) add1(t2) mod20(t2) add1(t2)
	    add1(t2) mod20(t2) add1(t1) mod20(t1) add1(t2) mod20(t2) add1(t2) mod20(t2)
	    add1(t2) mod20(t2) add1(t2) mod20(t2) add1(t1) mod20(t1) add1(t2) mod20(t2)
	    add1(t1) mod20(t1) add1(t1) mod20(t1) add1(t2) mod20(t2) add1(t2) mod20(t2)
	    add1(t1) mod20(t1) add1(t1) mod20(t1) add1(t1) mod20(t1) add1(t2) mod20(t2)
	    add1(t1) mod20(t1) add1042(t2) mod20(t2) add1(t2) mod20(t2) add1(t2) mod20(t
