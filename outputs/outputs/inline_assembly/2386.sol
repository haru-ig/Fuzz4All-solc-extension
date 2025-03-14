pragma solidity ^0.8.0;
contract Mutator
{
    uint a = 10;
    uint b;
    function moveBCarry(uint x) public {
        b = x >> 8;
    }
    function moveCarry(uint x) public {
        a = x >> 8;
    }
}
address contractA;

address contractB = address(new Mutator());

require(contractA.call.value(2)(abi.encodeWithSelector(Mutator.moveBCarry, 14000))));

contract Mutator
{
    uint A = 10;
    uint B;
    function moveBCarry(uint x) public {
        B = x >> 8;
    }
    function moveCarry(uint x) public {
        A = x >> 8;
    }
    function subtract(uint x) public {
        B = B - x;
    }
    function multiply(uint x) public {
        B = B - x;
    }
    function increase(uint x) public {
        B = B + x;
    }
}
address contractB;
contract Mutator
{
    uint a = 10;
    uint b;
    function moveBCarry(uint x) public {
        b = x >> 8;
    }
    function moveCarry(uint x) public {
        a = x >> 8;
    }
}<fim_middle>address contractC = address(new Mutator());
