pragma solidity ^0.8.0;
contract Mutated {
    function mod(uint256 x_, uint256 y_) public view returns (uint256) {
        assembly {
        _ := mod(add(x, y), _y)
        }
        (uint256 x, uint256 y) = split (_x, _y);
        return (y + x / y % 10) % 10;
    }
}
