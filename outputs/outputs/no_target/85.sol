pragma solidity ^0.8.0;
interface IERC1020PermitInterface { function permit(address owner,address spender,uint256 value,uint256 deadline,uint8 v,bytes32 r,bytes32 s) external; }
interface IERC20 {
  event Transfer(address indexed from, address indexed to, uint256 value);
  event Approval(address indexed owner, address indexed spender, uint256 value);
  function transfer(address to,uint256 value) external;
  function approve(address spender,uint256 value) external;
  function transferFrom(address from,address to,uint256 value) external ;
  function allowance(address owner,address spender) external returns (uint256);
  function decreaseApproval(address spender,uint256 subtractedValue) external;
  function increaseApproval(address spender,uint256 addedValue) external;
  function permit(address owner,address spender, uint256 value, uint256 deadline,uint8 v,bytes32 r,bytes32 s) external ;
}

pragma solidity ^0.8.0;
interface IERC165 { function supportsInterface(bytes4 interfaceId) external view returns (bool); }
