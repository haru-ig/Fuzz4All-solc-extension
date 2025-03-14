pragma solidity ^0.8.0;
interface IERC165 {
    function supportsInterface(bytes4 interfaceID) external view returns (bool);
}

pragma solidity ^0.8.0;
contract IERC165Token {

    function supportsInterface(bytes4 interfaceID) external view returns (bool);
}

pragma solidity ^0.8.0;
interface IERC1271 {

    function supportsInterface(bytes4 interfaceID) external view returns (bool);
}

pragma solidity ^0.8.0;
contract IERC721Receiver {
    function onERC721Received(address operator, address from, uint256 tokenId, bytes calldata data) external returns (bytes4);
}

pragma solidity ^0.8.0;
contract IERC1271Registry {
    function supportsInterface(bytes4 interfaceID) external view returns (bool);
}
interface IERC1271Token {
    function transferFromRegistry(address spender, address to, uint256 tokenId) external;
    function approveRegistry(address spender, address tokenAddress) external;
    function allowanceRegistry(address tokenAddress, address operator) external view returns (uint256);
    event ApprovalRegistry(address indexed tokenAddress, address indexed operator, address approved, bytes data);
    event MintRegistry(
        address indexed tokenAddress,
        address indexed operator,
        uint256 mintIndex,
        bytes data
    );
    event BurnRegistry(
        address indexed tokenAddress,
        address indexed operator,
        uint256 burnIndex,
        bytes data
    );
    event MinterRegistry(address indexed tokenAddress, address indexed operator, bytes data);
    event BurnerRegistry(address indexed
