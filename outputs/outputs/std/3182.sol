pragma solidity ^0.8.0;
import { IBytes2AddressStorage } from './IBytes2AddressStorage.sol';
import { ArrayLib } from './ArrayLib.sol';
interface IUint2ArrayStorage {
  function setUint2Array(uint256 a, uint256[] memory a_ ) external;
  function getUint2Array(uint256 a) external view returns (uint256[] memory);
}

pragma solidity ^0.8.0;
interface IBytes2UintStorage {
  function setBytes2Uint(uint256 a, bytes2 a_) external;
  function getBytes2Uint(uint256 a) external view returns (bytes2);
}
interface IBytes2ArrayStorage {
  function setBytes2Array(uint256 a, bytes2 memory a_) external;
  function getBytes2Array(uint256 a) external view returns (bytes2 memory);
}
interface IArrayMemoryStorage {
  function getArray(uint256 a) external view returns (uint256 memory);
}
import { IBufferMemoryStorage } from './IBufferMemoryStorage.sol';
import { IUtils } from './IUtils.sol';
contract Contracts {
  IUtils utils_;
  IBytes2AddressStorage bytes2addrstore_;
  IUtilsAddressStorage utilsaddrstore_;
  IBytes2UintStorage b2uintstore_;
  IBytes2ArrayStorage b2arraystore_;
  IBufferMemoryStorage buffermemorystore_;
  uint256[] array_;
  modifier _onlyBySelf {
    require(msg.sender == utils_.getSelf());
    _;
  }
  constructor() {
    bytes2addrstore_ = IBytes2AddressStorage(0x00111111111111111111111111111111);
    utilsaddrstore_ = IUtilsAddressStorage(0x0012121212121212121212121212121);

    setArray();

    byte a_ [] = "hello";
    bytes2 b_ = "world";
    b2uintstore_.setBytes2Uint(10, "10".bytes());
    b2arraystore_.setBytes2Array(20, b_.bytes());
    buffermemorystore_.add(20, "hello".bytes());
  }
  function setArray() internal {
    uint256 size_ = Buffer_({0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 1
