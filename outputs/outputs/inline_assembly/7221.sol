pragma solidity ^0.8.0;
interface IERC20 {
    function totalSupply() virtual public view returns (uint256);
    function balanceOf(address what) virtual public view returns (uint256);
    function name() virtual public view returns (string memory);
    function symbol() virtual public view returns (string memory);
    function decimals() virtual public view returns (uint8);

    function withdraw(uint256 amount_) virtual public;
    function deposit(uint256 amount_) virtual public;
}
