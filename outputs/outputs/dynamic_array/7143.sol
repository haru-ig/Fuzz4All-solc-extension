pragma solidity ^0.8.0;
contract Test {
	struct Data {
    uint32[4] array;
}
    uint[] private arr;
	function test(uint x1, uint x2, uint x3, uint x4) public {
        arr.push(x1);
        arr.push(x2);
        arr.push(x3);
        uint[] memory oldStorage = arr;
        arr.push(oldStorage[oldStorage.length - 1]);
	}
}
contract Test {
	struct Data {
    uint a;
	}
}
