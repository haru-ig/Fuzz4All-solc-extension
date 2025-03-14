pragma solidity ^0.8.0;
interface IErc721 {
    function renounceOwnership() external;
    function setApprovalForAll(address _operator, bool _approved) external;
    function transferFrom(address _from, address _to, uint256 _tokenId) external returns (bool) ;
    function balanceOf(address _owner) external view returns (uint256 _count);
}
interface IERC2812 {
    function transferFrom(address _from, address _to, uint256 _tokenId) external ;
    function balanceOf(address _owner) external view returns (uint);
}
contract Erc721A {

    bool private contractDestroyed = true;
    uint256 private contractId;

    event SetDestroyFlagEvent(bool _destroyed);
    event DestroyContractEvent();

    modifier destroyContract {
      if (!contractDestroyed) {
        contractDestroyed = true;
        emit DestroyContractEvent();
        emit SetDestroyFlagEvent(true);
        selfdestruct(address(0));
      }
      _;
    }
}
