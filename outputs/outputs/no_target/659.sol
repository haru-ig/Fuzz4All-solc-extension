pragma solidity ^0.8.0;
contract IWrapper {
    function wrapperFunction(address _from, uint256 _amount) external;
}
contract IERC721 {
    function totalSupply() public view returns (uint256 total);
    function ownerOf(uint256 tokenId) public view returns (address owner);
    function exists(uint256 tokenId) public view returns (bool exists);
    function name(uint256 tokenId) public view returns (string memory name);
    function symbol(uint256 tokenId) public view returns (string memory symbol);
    function tokenURI(uint256 tokenId) public view returns (string memory uri);
    function approve(address to, uint256 tokenId) public;
    function setApprovalForAll(address operator, bool _approved) public;
    function isApprovedForAll(address owner, address operator)
        public view returns (bool);
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public;
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes memory data
    ) public;
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public;
    function _burn(uint256 tokenId) public;
    event TransferBatch(
        address indexed tokenOwner,
        address indexed from,
        address indexed to,
        uint256[] tokens
    );
    event TransferSingle(address indexed tokenOwner, address indexed from, address indexed to, uint256 tokenId);
}
contract Ownable {
    address internal _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor() internal {
        address msgSender = msg.sender;
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    modifier onlyOwner() {
        require(msg.sender == _owner);
        _;
    }

    function transferOwnership(address newOwner) public onlyOwner {
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}
