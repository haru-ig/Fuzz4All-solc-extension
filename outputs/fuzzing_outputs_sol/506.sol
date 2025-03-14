pragma solidity ^0.8.0;
contract Caller9 {
    uint[1] public x;
    constructor() {
        x[0];
    }
    function call(uint256 _id) public {
        uint256 _value = x[_id];
        require(_value!= 1, '1');
        x[_id - 1]++;
    }
}
