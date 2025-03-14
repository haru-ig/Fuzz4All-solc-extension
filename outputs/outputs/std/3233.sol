pragma solidity ^0.8.0;
import {IBytes4BytesArray} from "./IBytes4BytesArray.sol";
contract Bytes4BytesArray {
  IBytes4BytesArray public bytes44bytesarray;

  constructor() {
  (address arrPtr, ) = address(bytes44bytesarray).call{value: 1000000 * (uint256(bytes(IBytes4BytesArray(address(0)))))}(abi.encodeWithSignature("new", 0xbaddadadadadadadaeffe27777444455666677778889));

  }


}
