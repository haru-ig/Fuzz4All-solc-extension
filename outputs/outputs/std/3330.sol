pragma solidity ^0.8.0;
interface ArrayMutatorConstants{
  function ADDRESS_TYPE_MAX() external pure returns(bytes4);
  function ADDRESS_TYPE_MIN() external pure returns(bytes4);
}

pragma solidity ^0.8.7;
interface ArrayMutatorConstants{
  function ARRAY_TYPE_EIP20(address spender) external pure returns(uint88);
  function ARRAY_TYPE_EIP21(address spender) external pure returns(uint100);
}
