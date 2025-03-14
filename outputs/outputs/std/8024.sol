pragma solidity ^0.8.0;

/* pragma solidity ^0.6.12;





contract ExampleToken is Ownable {
    event Transfer(address indexed _from, address indexed _to, uint256 _tokenId);
    event Approval(address indexed _owner, address indexed _approved, uint256 _tokenId);
    event URI(string uri);

    mapping (uint256 => address) public _holderOf;

    mapping (address => mapping (uint256 => uint256)) public _ ownedTokens;

    uint256[] internal _tokenIds;


    constructor() {
        _mint(msg.sender, 1);
    }


    function _mint(address to, uint256 tokenId) internal {
        _safeMint(to, tokenId);

        emit Transfer(address(0), to, tokenId);
    }


    function _increaseApproval(address from, uint256 _
