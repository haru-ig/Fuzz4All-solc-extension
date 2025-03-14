pragma solidity ^0.8.0;











contract SimpleMultiply {

    uint128 numA;
    uint128 numB;

    constructor() {
        numA = 2;
        numB = 3;
    }

    function multiplyByTwo() internal pure returns (uint128) {
        return numA * numB;
    }

}

contract DuplicatedFunction{
    uint128 numA;
    uint128 numB;

    constructor() {
        numA = 2;
        numB = 3;
    }

    function multiplyByTwo() internal pure {
        numA *= numB;
        numB *= numA;
    }

    function increaseValues() public{
        numA *= 2;
        numB *= 2;
    }

}


contract Clarification {
    function() external payable {
        require(true);
    }

}

contract DuplicatedModifier {



    modifier canSetTwo{
        numA *= 2;
        numB *= 2;
        _;
    }

    function canIncrease(){
        numA *= 2;
        numB *= 2;
        _;
    }

}

contract DuplicatedReturn {

    function canIncreaseTwo() public returns (uint256) {
        numA *= 2;
        numB *= 2;
        return numA + numB;
    }


    contract CanIncreaseWithIncrementing {
        function canIncreaseTwo() public returns (uint256) {
            numA += 2;
            numB += 2;
            return numA + numB;
        }


        function canIncreaseThree() public returns (uint256) {
            numA += 2;
            numB += 2;
            numC += 2;
            return numA + numB + numC;
        }


        function canIncreaseFour() public returns (uint256) {
            numA += 2;
            numB += 2;
            numC += 2;
            num
