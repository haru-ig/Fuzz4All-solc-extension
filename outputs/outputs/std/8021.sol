pragma solidity ^0.8.0;
contract Array16_unchanged{
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    uint256[] public array4;
    function Mutate_array4(uint256[] storage1, uint256[] storage2,uint256[] storage3, uint256[] storage4){
        arrayOf3 = storage1; arrayOf2 = storage3; arrayOf1 = storage2; array4 = storage1;
        arrayOf3 = storage1; arrayOf2 = storage3; arrayOf1 = storage2; array4 = storage1;
        arrayOf3 = storage1; arrayOf2 = storage3; arrayOf1 = storage2; array4 = storage1;
        arrayOf3 = storage1; arrayOf2 = storage3; arrayOf1 = storage2; array4 = storage1;
    }
}
