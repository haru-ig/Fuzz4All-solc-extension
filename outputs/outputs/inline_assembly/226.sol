pragma solidity ^0.8.0;

contract E111{

    function sum() public pure{

    unchecked{
        uint[] memory numbers = [69,92337,442324423,79228169849375905429396, 7999999999999999999999999999999999999999999918, 0,2,3,120];
        uint result_ = 0;
        for(uint i = 0;i<numbers.length;i++){
            unchecked{
                result_+=numbers[i];
            }
        }
        emit Log(result_);
    }


    event Log(uint x);
}
