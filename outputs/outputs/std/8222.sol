pragma solidity ^0.8.0;
contract Array {
	uint[10] array;
	function findMax() public view returns(uint256) {
        return array[0];
	}
	function setArray(uint[20] memory memory_) public {
        array = memory_;
	}
	function getMax() public view returns(uint) {
        return convert(array[0], 0, 255);
	}
	function getMaxAndSubtract(uint x) public view returns(uint) {
        return array[0] - x;
	}
	function min() public view returns(uint) {
        return convert(array[5], 0, 255);
	}
	function addMaxBy(uint x) public view returns(uint) {
        return array[0] + x;
	}
	function minAndMultiply(uint x) public view returns(uint) {
        return convert(array[5], 0, 255) * x;
	}
}

pragma solidity ^0.8.0;
contract Random {
	uint16 private constant table = 2048;
	function get() public pure returns(uint) {
        return uint(keccak256(abi.encodePacked(uint256(blockhash(block.number-1)), blockhash(block.number)), "0x0b820c569c372c3b421198ac198a337464a34f838b820c569c372c3b"));
	}
	function getFromArray(uint[10] memory x) public pure returns(uint) {
        return (table*x[0]) % table;
	}
	function getFromArrayWithXor(uint[10] memory x, uint[10] memory y)
		public pure returns(uint) {
        return (x[5] + table*y[0]) % table + table*x[0] + x[0];
	}
}
