pragma solidity ^0.8.0;
contract IERC20WithDecimals {
    function decimals() external pure virtual returns (uint8);
}
