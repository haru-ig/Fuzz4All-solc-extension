pragma solidity ^0.8.0;
contract Mutated {
    uint public n;
    uint public x;

    function setX(uint _x) public {
        x = _x;
    }

    function setN() public {
        n = n + 0x1;
        y();
    }

    function y() public virtual {
        n--;
    }
}
