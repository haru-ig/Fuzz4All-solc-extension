pragma solidity ^0.8.0;
contract Array {
	uint[5] array_of_numbers;
	uint min;
	uint max;
	uint sum;

	function add_number() public {
		array_of_numbers.push(number);
		min = min < number? min : number;
		max = max > number? max : number;
		sum += number;
	}
}
pragma solidity ^0.7.0;
contract Convert {
	function convertUptoInt (uint _number)  public pure returns(int){
	 return _number - 1;
}
}
