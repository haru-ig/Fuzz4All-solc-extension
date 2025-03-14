pragma solidity ^0.8.0;
contract Mutated_Array{
    uint256[] public arrayOf1;
    uint256[] public arrayOf2;
    uint256[] public arrayOf3;
    uint256[] public array4;
    modifier Mutate_array4(uint256[] memory arrayOf1, uint256[] memory arrayOf2,uint256[] memory arrayOf3, uint256[] memory array4){
        _;
        memory newOf1; newOf1=newOf1+arrayOf2;
        memory newOf2; newOf2=arrayOf1+newOf2;
        memory newOf3; newOf3=newOf2+arrayOf3;
        arrayOf1=newOf2+arrayOf3;
        arrayOf3=newOf1+arrayOf2;
        arrayOf2=newOf3+newOf1;
        array4=newOf3+newOf2;
        _;
    }
}
