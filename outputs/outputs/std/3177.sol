pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

import './IEVM_contract.sol';

contract EVM_contract is IEVM_contract {


  address public constant ADDRESS = address(0x2562726517d976A6A49852509b5BcD6cB501aA5B);

  byte public constant SIGNED_BYTE = byte(0);


  string public name = "EVM_contract";

  string public symbol;


  constructor() {

    symbol = "EM";

    name = "EtherVM";
  }


  function getAddress() public pure override
    returns (address) {


      return ADDRESS;
  }


  function getContractAddress() public pure override returns (address) {


    return ADDRESS;
  }


  function getBytes32() public pure override
    returns (bytes32) {
    return bytes32(keccak256(abi.encodePacked("EM")));
  }



  function getMessageSignature() public pure override
    returns (bytes4) {
    return bytes4(keccak256(abi.encodePacked("getContractAddress()", "getBytes32()")));
  }


  function hash(bytes memory _hash) internal pure returns (bytes32 _hashHash) {


    _hashHash = keccak256(_hash);
  }
}
