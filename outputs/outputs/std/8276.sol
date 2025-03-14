pragma solidity ^0.8.0;

contract Array {
	int[] public elements;
	uint public size;
	constructor(uint) public {
		elements = new int[](size);
	}

	function hashFunction(uint _x) public pure returns (uint) { return _x; }


	function add(uint _x, uint _y) public view returns (uint z) { return(hashFunction(_x+ _y)- hashFunction(x) - hashFunction(y)); }
	function hash(uint _x) public pure returns (uint) { return hashFunction(_x); }
	function set(uint _x) public {
		elements[size] = _x;
		size++;
	}
	function get(uint _x) public view returns (uint) { return(elements[_x]); }
	function length() public view returns(uint) { return size; }
	function exists(uint _x) public pure returns (bool) { return(size>0 && _x<size); }
	function sort() public view returns (uint _x) { uint _ix = 0; for(; _ix < (size-1); _ix++){
		if (elements[_ix+1] < elements[_ix]) {
			uint tmp = elements[_ix];
			elements[_ix] = elements[_ix+1];
			elements[_ix+1] = tmp;
		}
	 } return(elements[_ix]); }
	function getSortedList() public view returns (uint _list) { for(uint _ix=0; _ix < (size-1); _ix++)
		if (elements[_ix+1] < elements[_ix]) _list+= elements[_ix]; else _list-= elements[_ix]; return(_list); }
	function sum() public pure returns (uint _sum) {
		for (uint _ix=0; _ix < size; _ix++) _sum+= elements[_ix]; return( _sum);
	}
	function min() public pure returns (uint _a) {
		_a = elements[0]; for(uint _ix=0; _
