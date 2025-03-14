pragma solidity ^0.8.0;
contract ContractA {
    modifier updateOnlyIfXLessThanY(uint256 x, uint256 y) {
        if (x < y) {
            _;
        }
    }
}
contract B {
    	uint256 public immutable x;
}
contract A is B {
    uint256 x;
    uint256 immutable y;
}
```
> A contract with multiple functions.
```
pragma solidity >=0.6.4;
contract A {
	struct AState{
	    uint256 counter;
	    string message;
	}
	function contractA(AState storage state) {
		if (state.message!= "success") {
			state.message = "success";
		    state.counter = 0;
		}	else {
			state.counter += 1;
		}
	}
	function contractB(AState storage state) {
		state.message = "failure";
	}
}
```
> A contract where no explicit state is used at all.
```
pragma solidity >=0.6.4;
contract A {
	function contractA() {
		return 42;
	}
	function contractB() {
		return 42;
	}
	function contractC() {
		return 42;
	}
	function contractAplusTwo() public pure returns (uint256) {
		return 84;
	}
}
```
> A contract that uses all Solidity features plus one function.
```
pragma solidity >=0.6.4;
contract A {
	uint256 public x;
    uint256 public y;
    function contractA() {
		x += 1;
		x += 1;
		return 0;
	}
}
```
> A contract that makes use of uint160.
```
pragma solidity >=0.6.4;
contract A {
	uint256 public x;
	contract B {
		struct CState{
		    uint256 value;
		}

		function ContractB(CState storage state) {
			state.value += 1;
		}
	}
	constructor(){
		x = 2;
	}

    modifier updateOnlyIfXLessThanY(uint256 x, uint256 y) {
		if (x < y) {
			_;
		}
    }

    function contractC() public {
		require(x + 1 < 2, "x was too small");
		x += 1;
		x += 1;
		require(x + 1
