pragma solidity ^0.8.0;
contract Test {
	struct Data {
    uint32[] array;
}
    uint[] private arr;
	function test(uint x) public {
        arr.push(x);
        uint[] oldStorage = arr;
        uint[] newStorage = new uint[](len(oldStorage)+1);
	}
        function test2(uint x) public {
        arr.push(x);
        uint[] memory oldStorage = arr;
        uint[] newStorage = new uint[](len(oldStorage)+1);
	}
}
