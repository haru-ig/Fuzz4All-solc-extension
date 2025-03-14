pragma solidity ^0.8.0;
abstract contract Ownable {
    address  _owner;

    constructor () isOwner {
        _owner = msg.sender;
    }

    modifier onlyOwner {
        require(isOwner, "Ownable: caller is not the owner");
        _;
    }

    function isOwner() public view virtual returns (bool) {
        return msg.sender == _owner;
    }

    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    function transferOwnership(address newOwner) public virtual onlyOwner {
        _transferOwnership(newOwner);
    }

    function _transferOwnership(address newOwner) internal virtual {
        require(newOwner!= address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

pragma solidity ^0.8.0;
interface IERC223Token {
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event TransferBatch(address indexed from, address[] indexed to, uint256[] indexed tokenIds);
    function transfer(address to, uint256  ) external ;
    function transferFrom(address from, address to, uint256 tokenId) external ;
    function approve(address  , uint256 tokenId) external ;

    function setApprovalForAll(address  , bool approved) external ;
    function isApprovedForAll(address  , uint256 tokenId) external view returns (bool) ;

    function getApproved(uint256 tokenId) public view returns (address operator) ;
}
