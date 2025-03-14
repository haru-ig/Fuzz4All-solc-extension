pragma solidity ^0.8.0;
contract SemanticallyEquivArrayApp {
    uint256[][] public array;
    function test(uint256[][] memory _array) public returns(uint256) {
        uint256 sum = 0;
        for (uint i = 0; i < _array.length; i++) {
            for (uint j = 0; j < _array[i].length; j++) {
                sum += _array[i][j];
            }
        }
        return sum;
    }
}
