pragma solidity ^0.8.0;
contract ArrayExample {
    uint256 private constant arrLength = 5;
    uint[] public array = [1,  100,  64, 8126, 99999999999999999];
    function test() public {
        uint x = 5;
        uint256 x_to_pointer = uint256(array[x]);
        uint256 value = uint256(array[arrLength]);
        uint256 index = 0;
        while (index!= arrLength) {
            uint256 valueOnIndex = uint256(array[index]);
            if (valueOnIndex!= array[0]) {
                revert();
            }
            index++;
        }
    }
}
