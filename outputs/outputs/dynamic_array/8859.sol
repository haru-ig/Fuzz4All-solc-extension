pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidityPointers3 {
  uint[][][] mutatedArrayofArraysab4;
  uint[][][] mutatedArrayofArraysacd2;
  uint[][][] mutatedArrayofArraysacd2;
}
contract SemanticallyEquivalentSolidityPointers4 {
  tuple tuple2;
  tuple tuple6;
  tuple tuple10;
  tuple tuple8;
  struct _StructMutated {}
  _StructMutated _structMutated2;
  _StructMutated _structMutated5;
  struct _StructMutatedMutated {}
  _StructMutatedMutated _structMutatedMutated2;

  tuple[] mutatedArrayofDynamicArraysaf6;
  tuple[] mutatedArrayofDynamicArraysaf6;
  uint[][][] uint1d3ab2;
}
pragma solidity ^0.8.0;
interface IERC20 {
    function balanceOf(address account) external view returns (uint256 balance);
    function totalSupply() external view returns (uint256 totalSupply_);
    function allowance(address owner, address spender) external view returns (uint256 remaining);
    function transfer(address to, uint256 value) public returns (bool success);
    function approve(address spender, uint256 value) public returns (bool success);
    function transferFrom(address from, address to, uint256 value) public returns (bool success);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}
pragma solidity ^0.8.0;
library IERC20Mintable {
    function mint(address account, uint256 amount) public {
        (bool success, ) = account.call{ value: amount }("");
        require(success, "IERC20.mint failed.");
    }
}
