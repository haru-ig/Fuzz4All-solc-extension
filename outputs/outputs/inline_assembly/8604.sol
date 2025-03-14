pragma solidity ^0.8.0;
contract InlineAssembly{
    uint constant test2 = 98;
    uint constant test3 = 100;
    uint constant test4 = 0;
    uint constant test = 1000;
    function solve() public pure returns (uint){
      assembly{


        var temp := test + test + test


        test := temp - test2


        test := temp + test2


        temp := test + test + test
      }
      return (temp);
    }
}
