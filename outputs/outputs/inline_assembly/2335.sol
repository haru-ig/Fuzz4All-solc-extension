pragma solidity ^0.8.0;
contract Computation
{
    uint public constant A = 10;
    uint public constant B = 2;
    constructor(uint x) {
    }

    function getA() view public returns (uint) {
        return A + x;
    }
    function setA(uint x) public {
    }
}

pragma solidity ^0.8.0;
contract Computation
{
    uint public constant A = 10;
    uint public constant B = 2;
    constructor(uint x) {
    }

    function getA() view public returns (uint) {

        Assembly {
            A := getA() + x
        }
    }
    function setA(uint x) public {
    }
}
