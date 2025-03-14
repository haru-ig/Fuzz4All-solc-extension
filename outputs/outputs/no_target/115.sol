pragma solidity ^0.8.0;
interface IERC20Wrapper {
    function getAmounts(IERC20Token token, uint256 amount) external view returns (uint256 amount0Out, uint256 amount1Out, bool done);
}
