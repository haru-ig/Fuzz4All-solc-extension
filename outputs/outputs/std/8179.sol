pragma solidity ^0.8.0;
contract Mutate {
    function f(uint a) public {
        uint x = a + div(1, 0);
        bool b = hasZeroX(x);
        assert(b);
    }
    function hasZeroX(uint x) private pure returns (bool) {
        require(x!= 0, "zero must be handled by hasZeroX");
        return true;
    }
}
