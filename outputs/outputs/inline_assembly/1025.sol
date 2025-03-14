pragma solidity ^0.8.0;




pragma solidity >=0.8.0 <0.9.0;

import "../IERC165.sol";

pragma abicoder v2;


library CheckPoint {
  struct Checkpoint {
    address payable signer;
    bytes32 data;
  }

  struct Checkpoints {
    Checkpoint[] checkpoints;
    uint64 nonce;
    uint64 currentNonce;
  }


  function checkPoint(
    Checkpoints storage self,
    address payable signer,
    bytes32 data
  ) public {
    self.nonce++;
    if (isChecksumAddress(data)) {
      self.currentNonce = self.currentNonce + 1;
    }
    self.checkpoints.push(Checkpoint({Signer: signer, Data: data}));
  }


  function checkPointVerify(
    Checkpoints storage self,
    address payable signer,
    bytes32 data
  ) internal view returns (uint64) {
    for (uint i = 0; i < self.checkpoints.length; i++) {
      if (self.checkpoints[i].Signer!= signer || self.checkpoints[i].Data!= data) {
        continue;
      }
      uint64 nonce = self.nonce;
      self.checkpoints[i] = Checkpoint({Signer: signer, Data: data});
      self.nonce = nonce + 1;
      break;
    }
    return self.currentNonce;
  }

  /**@dev Returns whether a given address is a valid
