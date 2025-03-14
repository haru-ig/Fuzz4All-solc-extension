pragma solidity ^0.8.0;
contract M8 {
    uint b;

    constructor() {
        b = 1;
    }
    function modify(uint y) public {
        b = b+(y*(y+1/2));
    }
    function divide(uint x) public {
        b = b-(x-2)*(uint((x-2)/(x+1/2)));
    }
    function modify2(uint y) public {
        b = b+1;
    }
    function double(uint x) public {
        b += x;
    }
}
contract M9 {

	function b2(uint x) private view returns (uint y) {

    	y = x;
        y = x+0.5;
	}

	function b3(uint x) private view returns (uint z) {

    	z = (x+1.5);
	}

	function callit(uint x, uint y) private {
		revert(abi.encode("you gave me", x,y));
	}

	function main(uint x) public view {

   	  uint z = b2(1);
    	revert(abi.encode("you gave", z, "(1+.5)"));

   	  uint aa = x;

      aa = aa+aa+2000;
      aa = aa-xx;
      aa = -aa;
      aa = aa-(aa+3);
      aa = aa-(xx-0.4);

      b2(z*(b2(x)+xx+2));
      b3(xx);
      b2(3*(b2(xx)-xx));

   	  b3(z);
      b2(z+zzz);

      b3(2.75);
      b2(0);
      b3(0);
      b3(b2(2.75));

      z = 0;
      b3(x);
      z = 0;
      b3(x);

      z = b2(2);
      z = b3(2);
      z = -x;
      z = x;
      z = 2/0;
      z = z+0;

      z = b2(0);
      z = b3(0);
      z = abs(z);

      b3(2*(x-0));
      b2(0);
      b3(x-(x+1));
      b3(2*x);
      b3(0-(x+1/(x+1)));
      b2(x+1-(2*z));
      b
