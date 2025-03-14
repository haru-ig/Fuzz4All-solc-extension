pragma solidity ^0.8.0;
contract ArrayMutations {
    uint[100] memory _numbers = [uint(1), uint(2), uint(3), uint(4), uint(5), uint(6), uint(7), uint(8), uint(9)];
    uint[] memory _numbers2;

    constructor (uint _num) {
        _numbers2.push(_num);
    }

    function pushValue(uint _num) public {
        _numbers2.push(_num);
    }
}
