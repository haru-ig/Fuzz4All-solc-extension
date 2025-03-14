pragma solidity ^0.8.0;
interface IERC2612TokenReceiver {
    function onERC2615Received(address _from, address _to, uint256 _tokenId, bytes calldata _data) external returns (bytes4 selector);
    event Erc2615Received(address indexed _from, address indexed _to, uint256 indexed _tokenId, bytes calldata _data);
}


pragma solidity ^0.8.0;
contract ERC721 is IERC2612 {
    uint256[] myArray;
    mapping (address => mapping (uint256 => uint256)) private _toIndex;
    mapping (uint256 => address) private _tokenOwner;
    mapping (address => bool) private _approved;

 uint256 myID = 0;
    string private name = "NFT NFT";
    string private symbol = "NFT";
    mapping (address => mapping (uint256 => bool)) private _ownableBy;

    constructor () {
    }


    function setTokenName(string calldata newName) public{
        name = newName;
    }


    constructor (string memory _name, string memory _symbol) public {
        name = _name;
        symbol = _symbol;
    }


    event Transfer(address indexed _from, address indexed _to, uint256 _tokenId);


    function getTokenID() public view returns (uint256 tokenID) {
        tokenID = myID;
        myID += 1;
    }

   function newNFT(address newOwner) public{
        uint256 tokenID = getTokenID();
        _tokenOwner[tokenID] = newOwner;
        _toIndex[newOwner][tokenID] = tokenID;
        emit Transfer(address(0), newOwner, tokenID);
    }

    function mintTokens(address newOwner, uint256 ID) public {


        uint256 tokenID = getTokenID();
        _tokenOwner[tokenID] = newOwner;
        _toIndex[newOwner][tokenID] = tokenID;
        emit Transfer(address(0), newOwner, tokenID);
    }

    function getOwnerOf(uint256 tokenID) public view returns (address) {
        return _tokenOwner[tokenID];
    }

    function isApproved(uint256 tokenID) public view returns (bool) {
        return _approved[msg.sender];
    }

    function transferFrom(address from, address to, uint256 tokenID) public virtual returns (bool) {
        require(_ownableBy[from][tokenID]);
        require(from == _tokenOwner[tokenID]);

        address prevOwner = _tokenOwner[tokenID];
        _approved[msg.sender] = false;

        _tokenOwner[tokenID] = to;
        _to
