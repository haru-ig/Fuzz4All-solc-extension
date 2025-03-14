pragma solidity ^0.8.0;
contract ArrayMutations3 {
    struct Array {array: string[ ];}
    function changeElement(Array storage array) public {
        array.array[3] = "new element";
    }
}
