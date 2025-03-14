pragma solidity ^0.8.0;
import "./MutateProgram.sol";
contract Example {
    uint x = 2;
    function div3(uint u) public pure returns (uint) {
        return MutateProgram._mul_uint(x, u);
    }
    function add5() public pure {
        x += 5;
    }
}
