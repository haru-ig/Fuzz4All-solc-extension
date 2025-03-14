pragma solidity ^0.8.0;
contract Computation
{
```
```solidity
pragma solidity <=0.6.10;

 contract Mutated
    {
        uint public A = 10;
        uint public B = 3;
        uint public C = 1;
        constructor(uint a, uint b) {
            A = a;
            B = b;
            C = a * b / 1000;
        }
        function multiply() public {
            C += 10;
        }
        function setA(uint x) public {
            A = x;
        }
        function getA() view public returns (uint) {
            return A;
        }
        function setB(uint x) public {
            B = x;
        }
        function getB() view public returns (uint) {
            return B;
        }
    }
<fim_middle>    uint public D = 10;
    uint public E = A * D;
    uint public F = 2 * B + 12;
    constructor() {
    }
    function multiply() public {
        C += 1;
        C += D / 2 + C;
    }
    function setA(uint x) public {
        D = x;
    }
    function getA() view public returns (uint) {
        return D;
    }
    function setB(uint x) public {
        E = x;
    }
    function getB() view public returns (uint) {
        return E;
    }
}

pragma solidity >=0.6.0 <0.7.0;
contract Computation
{
```
```solidity
pragma solidity <=0.6.4;
```
```solidity
contract Computation
{
    uint public constant A = 10;
    uint public constant B = 2;
    uint public constant C = 10100;
    uint private constant F = 15551;
    uint public constant G = 10000;
    uint public constant H = 51000;
    uint public constant J = 11;
    uint public constant K = 12500;
    uint public constant L = 3;
    uint public constant M = 0;
    uint public constant O = 900000;
    uint public constant N = 100000;
    uint public constant P = 100;
    uint public constant Q =
