pragma solidity ^0.8.0;


interface IErc20 {
    function transferFrom(address _from, address _to, uint256 _tokenId) external returns (bool);
}
