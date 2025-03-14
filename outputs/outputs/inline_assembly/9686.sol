pragma solidity ^0.8.0;
contract NonSemanticYulContract {
 uint internal contractCounter;
 uint constant c = 50;
    function subtract(uint x) internal pure returns (uint) {
        uint result;
        if (x < 120) {
            temp = c* 8 + x*c;
            result = temp;
        } else {
            if (x < 120) {
            temp = c* 10 * x* c + 11;
            temp -= 8;
             x = x* 10 + 10;
          }
            result = c* x* c - 8;
        }
        contractCounter += c*temp;
        return result;
    }
    function power(uint x) internal pure returns (uint) {
        uint result;
        if (x < 120) {
            if(c == 1) {
                c = 16;
            } else {
                result = 4*c*c*c*c*x*c;
            }
        } else if(x < 10 * 10 * 10 * 10 *10 *10 *10) {
            result = 1000* c*x*c;
        } else {
            result = 8 * c* c* c* x* c* c * c ;
        }

        contractCounter += c*result;
        return result;
    }
    function addBy(uint x) internal {
        uint temp = c * 10 * 10 *10*5 *5 * x + x*5 * c + 5;
        contractCounter += c* temp;
    }
}
