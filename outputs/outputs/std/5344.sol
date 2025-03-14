pragma solidity ^0.8.0;
contract ArrayExample {
    uint256 length = 10;
    uint[] public array = [1,  100,  64, 8126, 999999999999999999, 99999999999999999, 8888888888888888, 7222222222222222, 4444444444444444];
    function test() public {
        uint256 x;
        (x, uint256 x_pointer) = unpackUint256(array);
        uint256 value;
        (value, uint256 value_pointer) = unpackUint256(array);
        uint256 index;
        (index, uint256 index_pointer) = unpackUint256(array);
        while (index!= length) {
            (value, uint256 value_pointer) = unpackUint256(array);
            if (value!= array[0]) {
                revert();
            }
            index++;
        }
    }
    function unpackUint256(uint[] memory _array) public pure returns (uint256, uint256) {
        return (_array[1], _array[12]);
    }
}
