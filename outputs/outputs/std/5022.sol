pragma solidity ^0.8.0;
contract Opaque {
    uint32 public x;
    constructor(uint32 x) {
        this.x = x;
    }
}
contract NonFungibleToken {
        uint256 public totalTokenHolders;
        modifier isNotFungible() {
            require(ownerOf(tokenID(msg.sender)) == msg.sender);
            _;
        }
        modifier onlyTotalTokenHolders() {
            require(totalTokenHolders == totalSupply());
            _;
        }
    function ownerOf(uint256 i) public view returns (address){
        return holderMapping[i];
    }
    function supplyTotalTokens() onlyTotalTokenHolders public {
        totalTokenHolders+=1;
    }
    function mint(uint256 i) onlyNonFungible public {
        uint256 tokenId = tokenMapping[i];
        tokenMapping[tokenId] = totalTokenHolders;
        holderMapping[totalTokenHolders] = msg.sender;
        emit Transfer(address(0), tokenId, i);
        totalTokensCreated+=1;
        totalTokenHolders+=1;
    }
    function tokenID(address account) public view returns (uint256) {
        if(account == '0x000000000000000000000000000000000000000') {
            return 1;
        }
        uint256 tokenIndex = tokenMapping[account];
        uint256 token = tokenIndex;

        while (true) {
            tokenIndex = (tokenHash + tokenIndex + 1) % totalTokensCreated;
            if(tokenIndex == token) break;
            token = tokenIndex;
        }
        return token;
    }
}
