pragma solidity ^0.8.0;
interface IMutableArray {
    function index(uint) external view returns (uint);
    function push(uint) external;
    function pop() external;
    function remove(uint) external;
}
contract MutateArray {
    IMutableArray immutable arr;
    constructor(IMutableArray _arr) {
        arr = _arr;
    }

    function increment(uint index) public {
        if (arr.index(index) > 19999)
            arr.push(index + 1);
        else
            arr.remove(index);
    }
}
