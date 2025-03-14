pragma solidity ^0.8.0;
contract Mutator4
{
    uint public A;
    modifier setA (uint _A) { A = _A; _; }
    function write (uint _A) public { setA (_A); }
    function increase (uint _increase) public { setA (_increase + A); }
    function decrease (uint _decrease) public { setA (_decrease + A); }
    function getAmount (uint _B) public view returns (uint) { return setA(_B + A - A);}
}
