pragma solidity ^0.8.0;
contract MyContract {
	struct S {
	 uint x;
	 }
	s:S;
	constructor() {
		s.x * s.x;
		s.x == 0 * 0;
		}
	function f() public {
		s.x;
		s.x = 0;
		}
	}

pragma solidity ^0.8.0;
contract Array {
	uint[5] array = [32, 64, 256, 512, 1024];
	modifier nonZero() {
		uint x;
		if(x = 0) {
			return;
			}
		}
	function findMaxMinSum() public {
		uint x;
		x[1],x[5];
		x[1] += x;
		x[1] = 0;
	x -= x[1];
	}
	function findMinMaxSumArray(uint[] memory a) public {
		uint x;
		uint sum = 0;
		x = a[1] + a[5];
		a[5] = x;
		sum = sum + x;
		uint min = a[5] + 10 * a[1];
		uint temp = a[5];
		temp = a[1];
		a[5] += x - min;
		a[5];
		a[5];
		a[1];
		sum;
	}
	function findMinMaxSumArrayCopy(uint[] memory a) public {
		uint x;
		uint sum = 0;
		x = a[1] + a[1];
		a[1] = x;
		sum = sum + x;
		for(uint i = 1; i<= 6; i++) {
			a[i], sum;
		}
		uint min = a[a[1]] + 10 * sum;
		sum;
	}
	}
```
