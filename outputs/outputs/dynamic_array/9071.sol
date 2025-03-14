pragma solidity ^0.8.0;
abstract contract IERC721 {
    function getOwnerOf(uint256 tokenId) external view returns (address);
    function totalSupply() external view returns (uint256);
    function deleteToken(address operator, uint256 tokenId) external;
    function safeTransfer(address to, uint256 tokenId) external;
}

interface IERC721Enumerable is IERC721 {
    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256 tokenId);
    function tokenByIndex(uint256 index) external view returns (uint256 tokenId);
    function tokensOfOwner(address owner) external view returns (uint256[] memory tokenIds);
}

interface IERC721TokenReceiver {
    function onERC721Received(address from, address to, uint256 tokenId, bytes calldata data) external returns (bytes4);
}
pragma solidity ^0.8.0;

abstract contract ERC20 is IERC20, IERC721, IERC721TokenReceiver {
    mapping(address => uint256) internal _balances;

    function balanceOf(address who) external view returns (uint256);

    function transferFrom(address from, address to, uint256 tokenId) external;

    function approve(address to, uint256 tokenId) external;

    function transfer(address to, uint256 tokenId) external;
}

contract Balance is ERC20 {
    event Transfer(address indexed sender, address indexed to, uint256 value);

    function transfer(address to, uint256 tokenId) public override {
        super.transfer(to, tokenId);
        emit Transfer(msg.sender, to, tokenId);
    }
}

contract IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

contract Ownable is IERC165 {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor() {
        _setupOwner();
    }

    modifier onlyOwner() {
        require(_isOwner(), "Ownable: caller is not the owner");
        _;
    }

    function _setupOwner() internal {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }


    function isOwner() public view returns (bool) {
        return _isOwner();
    }
