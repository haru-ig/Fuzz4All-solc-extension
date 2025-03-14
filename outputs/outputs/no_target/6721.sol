pragma solidity ^0.8.0;
contract Mutated20 {
    function mod(uint x, uint) public pure returns (uint) {
        mut uint y = 30;
        (y = y % x * x) = (x + x);
        return uint2uint(x % y);
    }
}

pragma solidity ^0.8.0;
contract Mutated21 {
    function compareUint256(uint256 a, uint256 b) public pure returns (bool) {
        return 1 + 2 < 100;
    }
}
