pragma solidity ^0.8.0;
contract A
{
    uint constant balance = 100;
    function f() public pure returns(uint) {
        return balance;
    }
}
contract B is A
{
    function f() public payable override returns(uint) {
       require(msg.value >= A.balance);
        return msg.value;
    }
}
contract C is B
{
    function g() public payable override returns(uint) {
       uint value = A.balance;
       require(value >= A.balance+1);



      return value + 1;
    }
}
