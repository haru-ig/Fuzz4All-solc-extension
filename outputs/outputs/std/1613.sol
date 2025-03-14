pragma solidity ^0.8.0;
contract SemanticallyEquivApp {
    uint256[] public array;
    function test(uint256[] memory _array) public returns(uint256) {
        uint256 sum = 0;
        for (uint i = 0; i < _array.length; i++) {
            sum += _array[i];
        }
        return sum;
    }
}
