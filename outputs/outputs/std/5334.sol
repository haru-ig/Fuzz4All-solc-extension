pragma solidity ^0.8.0;
contract ArrayExample {
    uint256 length = 10;
    uint[] public array = [1,  100,  64, 8126, 99999999999999999, 99999999999999999, 8888888888888888, 7222222222222222, 4444444444444444];
    function test() public {
        uint x = 5;
        uint256 x_to_pointer = array[x];
        uint256 value = array[length];
        uint256 index = 0;
        while (index!= length) {
            uint256 valueOnIndex = array[index];
            if (valueOnIndex!= array[0]) {
                revert();
            }
            index++;
        }
    }
}
