pragma solidity ^0.8.0;
contract ArrayExample2 {
    uint256[8] constant internal _array = [
        10,
        4,
        0,
        3,
        12,
        6,
        0,
        2,
        5
    ];
    function add() returns (uint256) {
        return _array[0] + _array[1];
    }
}
