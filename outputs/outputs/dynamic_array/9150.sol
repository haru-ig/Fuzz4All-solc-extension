pragma solidity ^0.8.0;
<fim_middle>interface IErc20 {

    function balanceOf(address _owner) external view returns (uint256);

    function allowance(address _owner, address _spender) external view returns (uint256);

    function transferFrom(address _from, address _to, uint256 _tokenId) external;
}
