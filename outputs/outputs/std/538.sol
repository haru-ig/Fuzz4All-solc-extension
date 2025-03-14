pragma solidity ^0.8.0;

contract IMyContract_new {

    function createToken() public pure returns (uint256 newToken)
    {
        (, newToken) = IERC721(interfaceAddress).mint(owner());
    }


    function transferToken(uint256 tokenId, address to) public pure returns (uint256 balance)
    {
        balance=IERC721(interfaceAddress).balanceOf(to);
        if(IERC721(interfaceAddress).ownerOf(tokenId)!= address(0))
        {
            IERC721(interfaceAddress).transferFrom(to, IERC721(interfaceAddress).ownerOf(tokenId), tokenId);
        }
    }
}

pragma solidity ^0.8.0;


abstract contract Abstract{

    constructor(address payable _owner, string memory _contractName) public
    {
        owner = address(_owner);
        contractName= _contractName;
    }


    function owner() public view returns (address)
    {
        return owner;
    }


    function contractName() public view returns (string memory)
    {
        return contractName;
    }
 }

/* Please create a new contract with a contract-specific implementation, IMyContract_legacy,
   which extends from the standard contract IERC7
