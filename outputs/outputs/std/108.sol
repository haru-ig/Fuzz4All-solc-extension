pragma solidity ^0.8.0;
import "./mutate_program.sol";

contract Arithmetic {
    function add(uint x, uint y) public pure returns (uint z) {
        z = add_mut(x, y);
        require(z >= x);
        require(z >= y);
    }

    function add_mut(uint x, uint y) public pure returns (uint z) {
        z = (x >= y) * x + (x <= y) * y;
    }
}
