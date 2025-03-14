pragma solidity ^0.8.0;
contract Array {
	uint[] public store;
	uint[] storage arr;
	constructor(uint[] memory arg) public {
		store = arg;
	}

	function min(uint[] storage x) private pure returns(uint) {
        return x[0];
	}
	function max(uint[] storage x) private pure returns(uint) {
        return x[x.length -1];
	}
	function sum(uint[] storage x) public pure returns(uint) {
        uint tmp = 0;
		for (uint i = 0; i < x.length; i++) {
            tmp += x[i];
        }
		return tmp;
	}
	function set(uint idx, uint x) public {
		arr[idx++] = x;
		while (idx < arr.length) {
			arr[idx++] = store[idx-1];
		}
	}
	function get(uint idx) public pure returns(uint) {
		return arr[idx];
	}
	function sort() public {
		uint i;
		for (i = 0; i < this.arr.length-1; i++) {
			uint j = i+1;
			uint tmp = this.get(i);
			while (j < this.arr.length) {
				if (this.get(j) < tmp) {
					this.set(j, tmp);
					this.set(i, this.get(j));
					i = j;
					j++;
					j++;
				}
				else {
					j++;
				}
			}
			this.set(i, tmp);
			this.set(j, this.get(i));
		}
	}
}
