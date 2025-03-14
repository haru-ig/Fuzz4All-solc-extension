pragma solidity ^0.8.0;
contract ArrayMutatedOne {
    uint256[] array;
    function create() public {
        array.push(3);
        array.push(8);
        array.push(1);
        array.push(13);
        array.push(31);
        uint256 min = array.min();
        uint256 max = array.max();
        uint256 sum = array.sum();
        require(min == 1);
        require(max == 31);
        require(sum == 13);
    }
}
