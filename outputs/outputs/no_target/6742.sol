pragma solidity ^0.8.0;
import "./TestMutated21.sol";
contract TestMutated22 {
    function add(uint x, uint) public pure returns(uint) {
        require (x == 42);
        return add(x, 1);
    }
}
