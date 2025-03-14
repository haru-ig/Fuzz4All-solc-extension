pragma solidity ^0.8.0;
contract ArrayOperations {
    uint256 public nums;
    mapping(uint256 => string) public namesOfNumbers;
    constructor () public {
        nums = 123456789012345678901234567890123456;

        namesOfNumbers[4362364] = "4362364";
        namesOfNumbers[3628377223] = "3628377223";
        namesOfNumbers[211211] = "211211";
        namesOfNumbers[4366366] = "4366366";
        namesOfNumbers[251863] = "251863";

        for(uint256 i=20; i>0; i--) {
            nums += 1;
        }
    }
}
contract ArrayOperations1 is ArrayOperations {
    function f(uint256 num) public pure returns (string memory){
        string memory namesOfNumbers1 = namesOfNumbers[num];
        return namesOfNumbers1 == "4362364" || namesOfNumbers1 == "3628377223" || namesOfNumbers1 == "211211" || namesOfNumbers1 == "4366366" || namesOfNumbers1 == "251863";
        }
        mapping(uint256 => string) public namesOfNumbersNew;
        mapping(uint256 => string) public namesOfNumbersNew2;
}
