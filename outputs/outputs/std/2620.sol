pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721Enumerable.sol";


constructor() {

}


function _lengthOf(uint256[] memory tokenIds) private view returns (uint256) {
    return tokenIds.length;
}

function lengthOf(uint256[] memory tokenIds) public view returns (uint256) {
    return _lengthOf(tokenIds);
}

function totalSupply() public view returns (uint256) {
    uint256 total = 0;
    for (uint256 i=0; i < lengthOf(auctionStart); i++) {
        total = total + _amount[i];
    }
    return total;
}


function add(uint256 tokenId) public {
    _amount[lengthOf(auctionStart)] = tokenId;
    emit ApprovalBatch(tokenId, msg.sender, address(1));
}



uint256[] public auctionStart;

uint256 public _numberOfItems;


uint256[] public _amount;

mapping(address => bool) public _ownerIsApproved;
mapping(address => bool) public _operatorIsApproved;


modifier restrictTo(uint256 tokenId, address operator) {
    if (msg.sender == operator) _;
    else if (msg.sender == _ownerOf(tokenId)) _;
    else reverts();
    unchecked {
        _;
    }
}


modifier restrictToOwnership(address owner, uint256 tokenId) {
    if (msg.sender == owner) _;
    else if (msg.sender == _ownerOf(tokenId)) _;
    else reverts();
    unchecked {
        _;
    }
}
