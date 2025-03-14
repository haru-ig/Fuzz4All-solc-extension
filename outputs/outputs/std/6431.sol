pragma solidity ^0.8.0;
contract Math {
    function sqrt(uint256 x) public pure returns (uint256) {
        return sqrt_aux(x);
    }
    function sqrt_aux(uint256 x) private pure returns (uint256) {
        uint256 y = (x + 19) / 20;
        uint256 y_i = next_approximation(15);
        uint256 y_2 = next_approximation(12);
        for (uint256 i = 40; i > 0; i--)
            if (y / 2 * i >= y_i) {
                y_i = next_approximation(i / 4 * y_i + i / 4 * y_2);
                return (y / 2 * i - (y_i - y) / y_2);
            }
        require(false, "Math::sqrt_aux: No suitable candidate.");
    }
    function next_approximation(uint256 a) private pure returns (uint256) {
