pragma solidity ^0.8.0;
contract MutateArray_v1 {
    uint[] private _uintArr_a;

    constructor(
        uint256 n
    )
    {
        _uintArr_a.push(0x1);
        _uintArr_a.splice(14, 0, 13);
        _uintArr_a.pop();

    }

    function get_uintArr_a() public view returns(uint[] memory) {
        uint[] memory memoryArr = _uintArr_a;
        return memoryArr;
    }
}
contract MutateArray_v2 {
    uint[] private _uintArr_a;

    constructor(uint v)
    {
        _uintArr_a.push(v);
        uint[] memory memoryArr = _uintArr_a;
        memoryArr[0] = 4294967296;
        memoryArr.push(1);
        memoryArr.unshift(1);
    }

    function get_uintArr_a() public view returns(uint[] memory) {
        uint[] memory arr = _uintArr_a;
        uint256 length = len(arr);
        while(length > 1) {
            uint256 i = arr.pop();
            _uintArr_a.unshift(i);
        }
        length = len(arr);
        length = len(_uintArr_a);
        return arr;
    }
}
