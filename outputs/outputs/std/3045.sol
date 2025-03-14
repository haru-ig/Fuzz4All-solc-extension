pragma solidity ^0.8.0;
interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    function _mint(address account, uint256 amount) external returns (bool);
    function _burn(address account, uint256 amount) external returns (bool);
    function _safeTransferFrom(address from, address to, uint256 value) external returns (bool);
    function burn(uint256 amount) external returns (uint256);
    function _safeMint(address account, uint256 amount) external _mint(account, amount);
}
