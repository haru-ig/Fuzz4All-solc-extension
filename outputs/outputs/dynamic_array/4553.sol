pragma solidity ^0.8.0;
import "../token/ERC721/ERC721.sol";

contract MyExampleContract {

    constructor() {


        _mint(msg.sender, 1);
    }

    using SafeMath for uint256;

    event Mint(uint8, bytes);
    event MintFinished();

    uint8 public constant ID = 1;

    mapping(uint8 => address payable) public minters;
   mapping(uint256 => IERC721) tokenList;
    uint256 private lastMintId;


    function addMinter(address payable addr) external {
        require(!minters[ID], "ID already assigned");
        minters[ID] = addr;
    }

    function mintTokens(
        uint256 amountToMint,
        uint8 tokenId,
        bytes memory tokenData
    ) public {
        require(minters[ID] == msg.sender, "Only minter can mint");
        uint256 count = tokenList[tokenId].totalSupply();
        count = count.add(amountToMint);
        tokenList[tokenId].mint(
            new bytes(tokenData)[(int(count) + 999)/1000],
            uint256(tokenId)
        );
        lastMintId = lastMintId.add(1);
    }

    function mintOneTokens(uint256 amountToMint) public {
        mintTokens(amountToMint, lastMintId, new bytes(0));
    }

    function mintManyTokens(uint256 amountToMint) public {
        mintTokens(amountToMint, lastMintId, new bytes(0));
    }


    function ownerOf(uint256 tokenId) public view returns (address) {
        return tokenList[tokenId].owner();
    }


    function ownerOfByIndex(uint256 tokenId, uint256 index) public view returns (uint256) {
        require(balanceOf
