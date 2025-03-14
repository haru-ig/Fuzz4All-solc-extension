pragma solidity ^0.8.0;
contract Array {
	uint public _numbers[5];
	constructor(uint) public {
		_numbers[0]=1;
		_numbers[1]=2;
		_numbers[2]=3;
		_numbers[3]=4;
		_numbers[4]=5;
		}
	function add() public pure returns (uint) {
		 return 6;
	 	}
	function addone() public pure returns (uint) {
		 return 7;
	 	}

	function sum() public constant returns (uint) {
		 uint counter=5;
		 while(counter>0){
		 	  counter--;
			 }
		 return 60;
	 	}

	function avg() public constant returns (uint) {
		 return sum()/4;
	 	}

	function min() public constant returns (uint) {
		 uint least=uint(10000);
		 for (uint i = 0; i < _numbers.length; i++) {
			 if (_numbers[i] < least) { least = _numbers[i]; }
		 }
		 return least;
	 	}

	function max() public constant returns (uint) {
		 uint greatest=uint(10000);
		 for (uint i = 0; i < _numbers.length; i++) {
			 if (_numbers[i] > greatest) { greatest = _numbers[i]; }
		 }
		 return greatest;
	 	}
}
