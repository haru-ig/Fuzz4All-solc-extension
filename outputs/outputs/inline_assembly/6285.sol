pragma solidity ^0.8.0;
import { ECDSA } from '@openzeppelin/contracts/cryptography/ECDSA.sol';
import { Utils } from '@openzeppelin/contracts/utils/Utils.sol';
import { IERC165 } from '@openzeppelin/contracts/utils/IERC165.sol';
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract MixedContactsExample1 {
pragma experimental ABIEncoderV2;
struct MixedContacts {
    address[] tokenIDs;
    bytes32[] signatures;
    address[] owners;
    address[] authorities;

      address minersAddress;
}

  function decodeSignatures(address[] memory tokenOwners, bytes32[] memory signatures)
  public pure returns (address owner, address[] memory tokenIDs, string memory data, address[] memory authorities) {
    uint256 sigLen = signatures[0]["#"];
    if (sigLen!=0 ) {
      for (uint i = 1; i < tokenOwners.length; i++) {
        if (bytes(tokenOwners[i]).length>0) {
        require(
            (ECDSA.recover(tokenOwners[i], tokenOwners[i].hash())).isEqual(signatures[i]),
            "ECDSA decode failed"
            );
        }
      }
    }
    require(tokenOwners.length == signatures.length);
    owner = tokenOwners[0];
    for (uint i = 1; i < tokenOwners.length; i++) {
      tokenIDs.push(tokenOwners[i]);
      address token = tokenOwners[i];
      require(ERC20(token).name()!= '', "Minting contract doesn't set name");
      data = "";
      authorities = new address[](signatures[0][i + 1]);
      for (uint ii = 0; ii < authorities.length; ii++) {
        authorities[ii] = 0x0;
      }
    }
  }


  function main(MixedContacts memory ss, address sender)
  public view returns (address) {
    (address owner, address[] memory tokenID, string memory data, address[] memory authorities) = decodeSignatures(ss.owners, ss.signatures);
    require(tokenID.length == ss.tokenIDs.length, 'wrong tokenIDs
