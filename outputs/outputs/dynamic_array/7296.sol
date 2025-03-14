pragma solidity ^0.8.0;

interface IERC223
{
  event Approval(address indexed owner, address indexed spender, uint256 value);
  function balanceOf(address owner) external view returns (uint256 balance);
  function allowance(address owner, address spender) external view returns (uint256 allowed);
  function approve(address spender, uint256 value) external returns (bool);
  function transferFrom(address from, address to, uint256 value) external returns (bool);
  function transfer(address to, uint256 value) external returns (bool);
}

pragma solidity ^0.8.0;

contract Test{

    function getBalance() public view returns(uint256){
        return 1;
    }
}
