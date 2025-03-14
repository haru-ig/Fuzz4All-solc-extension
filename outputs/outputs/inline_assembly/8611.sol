pragma solidity ^0.8.0;
contract Modul{
    uint test2;
    uint test3;
    uint test4;
    uint test;
    function sum(uint _a, uint _b) public pure returns (uint) {
      if(_a < 0) return sum(add(sub((1000),_a),_b), sub((test-test2),_a));
      return sum(_a, _b);
    }
    function divide(uint _numerator, uint _denominator) public pure returns (uint) {
        if (_numerator == 0) return 0;

        uint temp = _numerator * 100;
        if(_denominator == 0) return temp;

        if(_numerator > _denominator) return divide(sub(temp,_denominator), _numerator);

        return divide(_numerator,_denominator);
    }
}
