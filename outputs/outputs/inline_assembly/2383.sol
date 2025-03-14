pragma solidity ^0.8.0;
contract Mutator
{
    uint A = 10;
    uint B = 20;
    uint C;
    uint D;
    uint E;
    uint F;
    function increase() public {
        B = B + 1;
        C = C + 1;
        D = D + 1;
        E = E + 1;
        F = F + 1;
    }
    function decrease() public {
        B = B - 1;
        C = C - 1;
        D = D - 1;
        E = E - 1;
        F = F - 1;
    }
    function subtract() public {
        B = B - 1;
        D = D - 1;
        E = E - 1;
        F = F - 1;
    }
    function multiply() public {
        B = B - 1;
        D = D - 1;
        E = E - 1;
        F = F - 1;
    }
    function moveB() public {
        B = A;
    }
    function moveC() public {
        E = 100;
    }
    function moveA() public {
        A = 20;
    }
    function moveBCarry() public {
        B = E | B;
    }
    function moveCarry() public {
        A = E | A;
    }
}
contract MutatorC
{
    uint A = 10;
    uint B = 20;
    uint C = A;
    uint D = A;
    uint E = A;
    uint F = A;
    function increase() public {
        B = B + 1;
        C = C + 1;
        D = D + 1;
        E = E + 1;
        F = F + 1;
    }
    function decrease() public {
        B = B - 1;
        C = C - 1;
        D = D - 1;
        E = E - 1;
        F = F - 1;
    }
    function subtract() public {
        B = B - 1;
        D = D - 1;
        E = E - 1;
