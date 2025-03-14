pragma solidity ^0.8.0;
contract MintableERC20 {
    function totalSupply() public virtual view returns (uint256 totalSupply_);
    function balanceOf(address tokenOwner) public virtual view returns (uint256 balance);
    function allowance(address tokenOwner, address spender) public virtual view returns (uint256 remaining);
    function approve(address spender, uint256 tokens) public virtual returns (bool);
    function transferFrom(address from, address to, uint256 tokens) public virtual returns (bool);
    function transfer(address to, uint256 tokens) public virtual returns (bool);
    function mint(address to, uint256 amount) public virtual returns (bool) {
        return _mint(to, amount);
    }
    function burn(uint256 tokenId) public virtual returns (bool);
    function supportsInterface(bytes4 interfaceId) public virtual view returns (bool);
}
pragma solidity ^0.8.0;
interface IERC20 {
    function transfer(address to, uint256 tokens) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 tokens) external returns (bool);
}
