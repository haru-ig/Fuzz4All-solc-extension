pragma solidity ^0.8.0;
contract Mutate10 {
    struct Array { uint x; }
    enum ArrayOperation { Add, Remove }
    uint256 size;
    Array[] arr;
    function addToArray(uint256 a) public {
        size++;
        arr.push(Array({ x: a }));
    }
    function subtractFromArray(uint256 a) public {
        uint256 i = 1;
        while (i <= size) {
            arr[i].x = arr[i - 1].x;
            i += 1;
        }
    }
    function readArray() public view returns (uint256[5] memory) {
        return uint256[](
            arr[1].x,
            arr[2].x,
            arr[3].x,
        );
    }
    function storeArray(uint256[5] memory x) public {
        arr[1].x = x[0];
        arr[2].x = x[1];
        arr[3].x = x[2];
    }
}

pragma solidity ^0.8.0;
contract Mutate11 {
    struct Array { uint x; }
    uint256 size;
    Array[] arr;
    function addToArray(uint256 a) public {
        size++;
        arr.push(Array({ x: a }));
    }
    function subtractFromArray(uint256 a) public {
        arr[0].x = arr[0].x - a;
    }
}
