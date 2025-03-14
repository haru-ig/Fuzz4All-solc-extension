pragma solidity ^0.8.0;
import "./Mutator.sol";
contract Mutator
{
    uint A = 10;
    uint B;
    constructor () public {
        B++;
    }
    function increaseA(uint x) public {
        B++;
        A = A + x * 2;
    }
    function increaseB(uint x) public {
        A = A + x;
        B = B + x;
    }
    function subtractA(uint x) public {
        B = x;
        return A;
    }
    function subtractB(uint x) public {
        B = x;
        return A;
    }
    function multiplyB(uint x) public {
        B = x;
        return A;
    }
    function doubleSubtract(uint x) public {
        B = x;
        return (A + B) / 2;
    }
}
contract Mutator {

}
