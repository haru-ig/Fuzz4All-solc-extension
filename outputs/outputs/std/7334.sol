pragma solidity ^0.8.0;
contract MyContract {


    uint length;


    uint[] memory arr;
    uint8[] [10] arr_10;
    uint8 [length] arr_length;

    function myFunction() public {
        length = 5;
        arr[31] = 84;
        arr_10[31] = 99;
        arr_length = [MAGIC_NUMBER, 123, 456, 789, 101];
    }
}



uint8[] memory arr;
uint memory result = cast_expression(arr as uint[length]);




uint [length] cast_expression(uint8[] memory arr);
