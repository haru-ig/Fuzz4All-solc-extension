pragma solidity ^0.8.0;
interface MinterInterface {

  function mint() external;

  function claimOwnership() external;
}
contract Minter is MinterInterface {
  bytes32 constant PUBLIC_KEY = bytes32(keccak256(abi.encodePacked("0x12d01BDA64123057298356F9550b1b769606458258B33776206E01b1884deE8a")));
  event OwnershipClaimed(address indexed beneficiary);

  function mint() public {
    minter.mint();
  }

  function claimOwnership() public {
    minter.claimOwnership();
    emit OwnershipClaimed(msg.sender);
  }
}</pre>

  </div>
)
