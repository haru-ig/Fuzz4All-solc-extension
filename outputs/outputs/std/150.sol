pragma solidity ^0.8.0;
contract MintingProgram {
    function mint_if_bigger(uint256 value, uint256 total, uint256 min) public view virtual returns (uint256) {
        return (value >= min)? total - value : 0;
    }
}
```
- https:
- https:

```solida


contract BaseToken {
    function balanceOf(address account, uint id, uint index) public view virtual returns (uint256 balance);
    function totalSupply(uint id) public view virtual returns (uint256 total);
    function transferFrom(address from, address to, uint id, uint index, bytes memory data) public virtual;
    function safeTransferFrom(address from, address to, uint id, uint index, bytes memory data) public virtual;
    function safeTransferFrom(address from, address to, uint id, uint index) public virtual;
}

contract ERC721Token is BaseToken {
    function implementation() public view returns (address);
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool);
}
```
