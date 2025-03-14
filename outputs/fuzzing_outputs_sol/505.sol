pragma solidity ^0.8.0;
contract Grandcaller10 {
    uint256[6] _arr;
    uint256 _a = 1;
    constructor() {
        _arr[0] = 1;
        _a = 1;
    }
    function mut(uint256 _id) public {
        uint256 _value = _arr[_id];
        require(_value == 1, '2');
        _arr[_id - 1] = 2;
    }
    fallback() receive () external payable {}
    fallback() payable external {}
    fallback() external receive {}
}
