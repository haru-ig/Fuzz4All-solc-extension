pragma solidity ^0.8.0;

interface IBytes2Data {
  function setBytes2Uint(uint256 a, bytes2) external;
  function getBytes2Uint(uint256 a) external view returns (bytes2);
}
pragma solidity ^0.8.0;


contract Bytes2AddressStorage is IBytes2AddressStorage {

  mapping(bytes32=>bytes32) internal data;


  function setBytes2Address(uint256 a_, bytes2 a_) public {
    data[a_] = a_;
  }
  function getBytes2Address(uint256 a_) public view returns (bytes2) {
    return data[a_];
  }
}
pragma solidity ^0.8.0;
interface IBytes2UintStorage {
  function setBytes2Uint(uint256 a_, bytes2) external;
  function getBytes2Uint(uint256 a_) public view returns (bytes2);
}
pragma solidity ^0.8.0;

interface IBytes2Data {
  function setBytes2Uint(uint256 a_, bytes2) external;
  function getBytes2Uint(uint256 a_) public view returns (bytes2);
}
pragma solidity ^0.8.0;

contract Bytes2UintStorage is IBytes2UintStorage {

  uint256[] storage integers = new uint256[](100);


  mapping(uint => uint) internal uint_mapping;


  function setBytes2Uint(uint a_, bytes2 a_) public {
    uint_mapping[a_] = uint(a_);
    integers[uint(a_)] = uint(a_);
  }
  function getBytes2Uint(uint a_) public view returns (bytes2) {
    return bytes2(uint_mapping[a_]);
  }
}
