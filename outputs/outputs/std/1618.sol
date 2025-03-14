pragma solidity ^0.8.0;
contract SemanticallyEquivApp {
    function test(uint256[] memory _array) public returns(uint256) {
        uint256 maximumValue = _array[_array.length - 1];
        uint256 minimumValue = _array[0];
        uint256 sum = 0;
        for (uint i = 0; i < _array.length; i++) {
            uint256 item = _array[i];
            if (item <= maximumValue) {
                minimumValue = _array[i];
            }
            sum += item;
        }
        return sum;
    }
}
