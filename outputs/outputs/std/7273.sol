pragma solidity ^0.8.0;
contract Mutant1 is Mutation
{
    uint[] storage b;
    function m1() public { b.push();  }
	function m2() public { uint[] memory b; b.push();  }

	function m3() public { uint[] storage b = a; a = b; }
	function print() public  {
        print(a,a.length);
    }
}
function print(uint[] memory x, uint n) {
    if (n > 0) {
        if (x[n-1] == 0 && n > 1) print(x,n-1);
        print(x,n-1);
    }
}
