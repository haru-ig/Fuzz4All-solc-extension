pragma solidity ^0.8.0;
contract Casts {
    uint public num;
    constructor(uint _num) {
        num = _num;
    }
}
contract CastsWithMemory {
    uint256[] public arr;
    constructor(uint256[] memory _arr) {
        arr = _arr;
    }
    function getLength() public view returns(uint256) {
        return arr.length;
    }
}
