pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract IERC677TokenInterface is IERC677TokenReceiver {
    function tokenURI(uint256 chainId, bytes32 tokenId) external view virtual returns (string memory);
    function onERC677Received(address, address, uint256, bytes calldata) external returns(bytes4);
    event Transfer(address indexed _from, address indexed _to, uint256 _tokenId);
}
```
