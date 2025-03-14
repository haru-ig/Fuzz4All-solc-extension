pragma solidity ^0.8.0;
contract MultiGenerator_8 {
    uint constant minValue = 0;
    uint constant decrement = 1;
    uint constant maxValue = 99;
    function generateMultiple(uint num1, uint num2) public pure returns(uint sum){
        checkAdditionOverflow(num1, num2);
        return num1 * decrement + (num2 = minValue + (decrement * num2 * decrement));
    }
    receive() external payable {}
     function checkAdditionOverflow(uint a, uint b) view internal {
      while (a < 0 && b < 0) a += 1;
      while ((a - b) < (a - maxValue) && (b - a) < (b - maxValue)) a += decrement;
    }
}
contract Main
{
    address payable receiver;
    function Main (address payable _receiver) public payable {
        receiver = _receiver;
    }
    event LogSuccess (uint a, uint b,  uint c);
    function Log (uint a, uint b,  uint c) public  {
       uint sum = c + a + b;
       (a, b, c) = (c, b, a);
       emit LogSuccess(a,b, c);
    }
    function Log2(uint c, uint a, uint b) public  {
        uint sum2 = a + b;
        (uint tmpA, uint tmpB, uint tmpC, uint tmpD) = (a, b, c, sum2);
        emit LogSuccess(a,b, c);

        uint sum3 = 0;
        (c, sum3) = (b, a);
        emit LogSuccess(a,b, c);
        sum2 += tmpD;
        if (sum2 > tmpB > tmpA) c = 1 - c;
        emit LogSuccess(a,b, c);

        (uint tmpTmpA, uint tmpTmpB) = (1,2);
        sum2 += tmpTmpB;
    }
}
