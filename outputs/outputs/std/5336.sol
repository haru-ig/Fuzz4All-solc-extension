pragma solidity ^0.8.0;
contract ArrayExample {
    uint256 length = 10;
    bytes[] public array = [1,  100,  64, 8126, 99999999999999999, 999999999999999999, 8888888888888888, 7222222222222222, 4444444444444444];
    function test() public {
        bytes x = "5";
        bytes x_to_pointer = array[x];
        bytes value = array[length];
        bytes index = "0";
        while (index!= length) {
            bytes valueOnIndex = array[index];
            if (bytesMemory(valueOnIndex)!= bytesMemory(0)) {
                revert();
            }
            index++;
        }
    }
}
