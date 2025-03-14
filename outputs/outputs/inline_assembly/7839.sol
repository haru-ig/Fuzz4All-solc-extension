pragma solidity ^0.8.0;
import './L18.sol';
contract L18 {
    struct Store { uint x; }
    uint x;
    uint function add(Store memory s1, Store memory s2) public pure returns(uint) {
        return s1.x + s2.x;
    }
}

contract L19
{
    uint public x = 1;
    function increment() public view {
        x += 2;
        x++;
    }
}
