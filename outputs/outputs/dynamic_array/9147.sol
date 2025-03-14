pragma solidity ^0.8.0;
interface IErc721 {
    function transferFrom(address _from, address _to, uint256 _tokenId, bytes memory _data) external returns (bool);

    function approve(address _approved) external returns (bool);

    function setApprovalForAll(address _operator, bool _isApprovedForAll) external returns (bool);

    function isApprovedForAll(address _operator) external view returns (bool);
}
