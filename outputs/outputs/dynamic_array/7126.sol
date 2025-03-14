pragma solidity ^0.8.0;
contract Test {
	struct Data {
    uint32[] public array;
}
    uint[] public arr;
    function test(uint x) public {
        arr.push(x);
        uint[] memory oldStorage = arr;
        arr.push(oldStorage[oldStorage.length - 1]);
        uint[] memory newStorage = arr;
    }
}

pragma solidity ^0.8.0;
contract Test {
	struct Data {
    uint32[] public array;
}
    uint[] public arr;
    function test() public {
        uint[] memory newArr = new uint[](2);
        uint[] memory oldArr = arr;
        newArr[oldArr.length] = oldArr[oldArr.length - 1];
        uint[] memory newStorage = newArr;
    }
}
