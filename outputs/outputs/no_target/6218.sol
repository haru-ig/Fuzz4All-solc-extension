pragma solidity ^0.8.0;
contract MultiGenerator {
    uint constant minValue = 0;
     uint constant increment = 1;
     uint constant maxValue = 99;


    function generateMultiple(uint num1, uint num2) public pure returns(uint sum){
        sum = num1 + ( num2*increment );
        return sum;
    }

    receive() external payable {}

}

pragma solidity ^0.8.0;
contract MultiGenerator_2 {
    uint constant minValue = 0;
     uint constant increment = 1;
     uint constant maxValue = 99;

    function generateMultiple(uint num1, uint num2) public pure returns(uint sum){
        sum = num1 * ( num2 * increment );
        return sum;
    }
    receive() external payable {}
}
