pragma solidity ^0.8.0;

interface IERC721 {
    event Transfer(address indexed from, address indexed to, uint256 indexedtokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexedtokenId);
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);
    event ContractFallback( address indexed _from, address indexed _to, bytes data);


    function totalSupply() external view returns (uint256 total);


    function balanceOf(address _user) external view returns (uint256 balance);


    function isApprovedForAll(address _owner, address _operator) external view returns (bool);


    function setApprovalForAll(address _owner, address _operator) external;


    function isApprovedBy(address _spender, address _owner) external view returns (bool);


    function transferFrom(address _from, address _to, uint256 _tokenId) external;


   /**
     * @dev Approve `_to` to transfer the specified `tokenId` token.
     *
     * Emits an {
