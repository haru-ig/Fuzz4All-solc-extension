pragma solidity ^0.8.0;
interface IERC20Token3 {
    function decreaseAllowance(address spender, uint256 amount) external returns (bool);
    function increaseAllowance(address spender, uint256 amount) external returns (bool);
}

pragma solidity ^0.8.0;
contract IERC721Token {
    event Transfer(address indexed from, address indexed to, uint256 tokenId);
    function transferFrom(address from, address to, uint256 tokenId) external returns (bool);
    function approve(address to, uint256 tokenId) external returns (bool);
    function removeFrom(uint256 tokenId) external;
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
    function balanceOf(address owner) external view returns (uint256 balance);
    function URI(uint256 tokenId) external view returns (string memory);
    event Approval(address indexed owner, address indexed approved, uint256 tokenId);
}
contract IFallbackERC20 {
    function fallback(uint256  ) external;
}
contract FallbackERC20 is IERC20Token, IFallbackERC20 {
    function fallback(uint256 amount) public payable {
        _msgSender() == (address(0))
            || IERC20Token(_msgSender()).transfer(_msgSender(), amount)  ;
    }
}
