pragma solidity ^0.8.0;
interface IERC223
{
    function transfer(address to, uint256 amount) external;
}

pragma solidity ^0.8.0;
interface IERC20
{
    function transfer(address to, uint256 amount) external returns (bool);
    function approve(address spender, uint256 amount) external returns (bool);
}
