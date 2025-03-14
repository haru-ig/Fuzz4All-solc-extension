pragma solidity ^0.8.0;
interface IERC20Mintable {
    function mint(IERC20Token _to, uint256 _amount) external returns (bool);
}
