pragma solidity ^0.8.0;
contract MutatedYulContract9{
    uint internal contractCounter;
    uint constant c = 0x00;
    bool equals(uint x,uint y) public pure returns(bool){
      return x==y;
    }
    function twoAndLessThanTwo(uint x) public pure returns(bool){
      return x>2;
    }
    function multiplyToTwoIfTwoAndLessThanTwo(uint x) public pure returns(bool){
      return!(twoAndLessThanTwo(x));
    }
    function subtractIfOne(uint x) public pure returns(bool){
      return x==1;
    }
    function minusTwoIfOne(uint x) public pure returns(bool){
      return x-1==2;
    }
    function addOneIfTwoLessThanTwo(uint x) public pure returns(bool){
      return x<2;
    }
}
contract MutatedYulContract10{
    uint internal contractCounter;
    uint constant c = 0x00;
    uint public number;
    function plusTwoIfTrue(bool x) public pure returns(bool){
      return x==true;
    }
    uint constant c = 0x00;
    function plusTwoIfTrue2(bool x) public pure returns(bool){
      return x*2 + c > 10;
    }
    uint constant c = 0x00;
    function plusTwoIfTrue3(bool x) public pure returns(bool){
      return x*2 + c >= 10;
    }
    uint constant c = 0x00;
    function plusTwoIfTrue(bool x) public pure returns(bool){
      return x*2 + c > 10;
    }
    uint constant c = 0x00;
    function plusTwoIfTrue(bool x
