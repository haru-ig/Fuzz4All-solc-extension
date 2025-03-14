pragma solidity ^0.8.0;
contract Test {
    struct Data {
        uint32[] array;
    }
    uint x;
    uint[] arr;
    uint[] memory store;
	function test(uint y) public {
        store.push(x);
        uint[] memory oldStorage = store;
        store.push(oldStorage[oldStorage.length - 1]);
	}
}

    contract Test {
        struct Data {
        uint32[] array;
    }
        uint[] oldArr;

	function test1(uint x) public {
		oldArr.push(x);
        uint[] memory oldStorage = oldArr;
        oldArr.push(oldStorage[oldStorage.length - 1]);

	}

	function test2(uint y) public {
		oldArr.push(y);
	}
}
