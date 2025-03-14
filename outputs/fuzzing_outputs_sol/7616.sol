pragma solidity ^0.8.0;
contract MutatesCaller
{
    address payable a;
    uint8 p;
    uint8 m;
    assembly { m := 1 }
    function set() public { a.transfer(payable(0xD1ea484D21883cA007a94eeCa404054916D385C9), 666) }
    function add() public { a.transfer(payable(0xD1ea484D21883cA007a94eeCa404054916D385C9), m.add(3)) }
    function setP() public { a.transfer(payable(0xD1ea484D21883cA007a94eeCa404054916D385C9), p.add(2)) }
    function change() public { set(); add(); setP(); }
}
