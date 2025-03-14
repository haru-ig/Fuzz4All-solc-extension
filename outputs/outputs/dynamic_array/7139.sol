pragma solidity ^0.8.0;
contract Test {
	struct Data {
    uint32[] array;
}
    uint[] public arr;
	function test(uint x) public {
        arr.push(x);
        uint[] storage _oldStorage = arr;
        arr.push(_oldStorage[_oldStorage.length - 1]);
	}
}

pragma solidity ^0.8.0;
contract Test {
	struct Data {
    uint32[] array;
}
    uint[] public arr;
	function test(uint x) public {
        arr.push(x);
        uint[] memory _oldStorage = arr;
        arr.push(_oldStorage[_oldStorage.length - 1]);
	}
}
