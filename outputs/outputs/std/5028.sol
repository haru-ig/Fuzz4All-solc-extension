pragma solidity ^0.8.0;
contract Mutated2 is Mutated {
    uint256 a;
    function add(uint256 x, uint256 y) public pure returns(uint256 result) {
        if (x > 0)
            result = x + y;
        a = result;
    }
    function mul(uint256 x, uint256 y) public pure returns(uint256 result) {
        if (x > 0)
            result = x * y ;
    }
}
