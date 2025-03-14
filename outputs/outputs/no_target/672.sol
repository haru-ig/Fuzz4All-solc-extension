pragma solidity ^0.8.0;
library SafeMath_uint {
    function mul(uint256 a, uint256 b)internal pure returns (uint256 c) {
        (c, ) = (mul(a, b), 0);
    }
    function div(uint256 a, uint256 b)internal pure returns (uint256) {
        require(b > 0, "Math: division by 0");
        c = a / b;
        return c;
    }
    function sub(uint256 a, uint256 b)internal pure returns (uint256) {
        require(b <= a, "Math: subtraction overflow");
        return a - b;
    }
    function max(uint256 a, uint256 b)internal pure returns (uint256) {
        return b >= a? b : a;
    }
    function divCeil(uint256 a, uint256 b)internal pure returns (uint256) {
        c = div(a, b);
        e = mod(a, b);
        if (e > 0) {
            return c + 1;
        } else {
            return c;
        }
    }
    function mod(uint256 a, uint256 b)internal pure returns (uint256 c) {
        require(b > 0, "Math: modulo by 0");
        c = a % b;
        c += a < b && b!= 0? b : 0;
    }
}
interface IUniswapV2Router01 {
    function factory() external pure returns (address);
    function WETH() external pure returns (address);
    function addLiquidity(address tokenA, address tokenB, uint amountADesired, uint amountBDesired, uint amountAMin, uint amountBMin, address to, uint deadline) external returns (uint amountA, uint amountB, uint liquidity);
    function removeLiquidity(address tokenA, address tokenB, uint liquidity, uint amountAMin, uint amountBMin, address to, uint deadline) external returns (
