pragma solidity ^0.8.0;









pragma solidity ^0.8.0;

interface IERC20
{
    event Transfer(address indexed src, address indexed dst, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    function totalSupply() external view returns (uint256);

    function balanceOf(address owner) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    function approve(address spender, uint256 value) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
    function increaseAllowance(address spender, uint256 addedValue) external returns (bool);
    function decreaseAllowance(address spender, uint256 subtractedValue) external returns (bool);
}

















interface ERC223
{



    function mint(uint256 amount, address to) public returns (address);

    /* Function for the account to transfer the tokens into
