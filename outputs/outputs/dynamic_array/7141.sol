pragma solidity ^0.8.0;
contract Test {

    struct Data {
        uint32[] array;
    }

    uint[] private arr;
	function test(uint x) public {
        arr.push(x);
        uint[] memory oldStorage = arr;
        uint[] memory newStorage = oldStorage.concat(oldStorage);
        arr.push(newStorage[newStorage.length - 1]);
	}
}


pragma solidity ^0.8.0;
contract Test {

    struct Data {
        uint32[] array;
    }

    uint[] private arr;
	function test(uint x) public {
        arr.push(x);
        uint[] memory oldStorage = arr;

        uint[] memory newStorage = oldStorage.concat(oldStorage);
        arr.push(newStorage[newStorage.length - 1]);
	}
}
