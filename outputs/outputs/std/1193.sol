pragma solidity ^0.8.0;
contract Ae{
    uint val;
    function test() public virtual nonpayable{
       uint x = 123;
       if (x > 2738) {
            revert();
         } else {
            val = val*2;
         }
    }
    uint x = 0;
    function test1() public payable{
       x = x*2;
    }
    function test2() public pure nonpayable{
        x = x*2;
    }
    function test3() public pure payable{
        x = x*2;
    }
}
