pragma solidity ^0.8.0;
abstract contract MutateProgram {
    function _max_uint(uint x, uint u) public pure returns (uint) {
        if (x < u) { return u; }
        return x;
    }
}
pragma solidity ^0.8.0;

contract A{
    function min(uint256 x, uint256 y) public pure {
        (x,y) = (_min_uint(x,y), _min_uint(y,x));
    }
}

interface B{
    function min(uint256 x, uint256 y) external view returns (uint256);
}

contract C{
    function min(uint256 x, uint256 y) public view returns (uint256) {
        (x,y) = (_max_uint(x,y), _max_uint(y,x));
    }
}
