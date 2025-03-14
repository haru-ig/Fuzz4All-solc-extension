pragma solidity ^0.8.0;
contract Qc {
    uint constant Init = 3;
    uint rBb;
    constructor () public {
        rBb = Init;
        uint n = Init;
        for (uint x = 0; x < 10000; x++) {
            rBb = Init;
            n = Init;
        }
        rBb = rBb + Init + Init + Init + Init + Init + Init + Init + Init;
    }
}
pragma solidity ^0.8.0;
contract Qr {
    uint rRr;
    constructor () {
        rRr = 0;
    }
    function frr(uint y) public {
        uint x = 0;
        do {
            x++;
            x = rRr;
        } while (x < y);
    }
}
contract Qs {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    uint f;
    uint g;
	constructor () public {
    	a = 0;
    	b = 0;
    	c = 0;
    	d = 0;
    	e = 0;
    	f = 0;
    	g = 0;
	}
}

pragma solidity ^0.8.0;
contract Qt {
    uint rSs;
    constructor () public {
        rSs = 0;
    }
    function test() public {
        uint result1 = d + a + b + c + e + f;
        uint result2 = g;
        uint result3 = rSs;
        uint result4 = a + b + c + e + f + result2 + result3;
        uint result5 = result1 + result4;
        if (result1 == result5) {
            a;
            b;
            c;
            e;
            f;
            g;
        }
        if (a < result5) {
            a;
            e;
            f;
            g;
        }
        if (b < result5) {
            a;
            d;
            f;
            g;
        }
        if (c < result5) {
