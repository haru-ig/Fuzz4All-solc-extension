pragma solidity ^0.8.0;
interface IERC712 {

    function name() external pure returns (string memory);


    function symbol() external pure returns (string memory);


    function tokenURI(uint256 tokenId) external pure returns (string memory);


    function domainSeparator() external view returns (bytes32);
}
