pragma solidity ^0.8.0;
contract MultiGenerator_5 {

    function generateMultiple(uint num1, uint num2) public pure returns(uint numSum3) {
        bool sign1 =num1<0;
        bool sign2 =num2<0;
        sign1 =!sign1;
        sign2 =!sign2;
        numSum3 = (num1<0^num2?-sign1*num1:sign1*num1)^(sign1*sign2^num1^num2);
        return numSum3;
    }

    receive() external payable {}
}


pragma solidity ^0.8.0;
contract MultiGenerator_5 {

    function generateMultiple(uint num1, uint num2) public pure returns(uint numSum3) {
        bool sign1 =num1<0;
        bool sign2 =num2<0;
        sign2 =!sign2;
        numSum3 = (num1<sign2^num2?-sign2*num1:sign2*num1)^(num1^num2);
        return numSum3;
    }

    receive() external payable {}
}
