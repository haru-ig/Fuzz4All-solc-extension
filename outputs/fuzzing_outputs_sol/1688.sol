pragma solidity ^0.8.0;
contract Mutations {
  function mutateData() public {
    bytes32[] memory mydata = [1,2,3,4,5];

    bytes32 mydataAddend = bytes32(uint256(uint(keccak256(abi.encodePacked(mydata))))) + 1;
    delete mydata.length;
    delete mydataAddend;
  }
}

pragma solidity ^0.8.0;
interface ICallerContract {
  function callMutated(MutatedFallback caller) external payable returns(uint256 data);
}
contract Caller {
  ICallerContract caller = ICallerContract(address(0));
  function callSimple() external payable returns(uint256 data) {
    data = caller.callMutated(MutatedFallback(address(this)));
  }
  function callPayable() external payable returns(uint256 data) {
    data = caller.callMutated(MutatedFallback(address(0)));
  }
  function callUnknown() external returns(uint256 data) {
    data = caller.callMutated('contract unknown');
  }
  function callBytes() external returns(uint256 data) {
    data = caller.callMutated(bytes(abi.encodePacked(1,2,3)));
  }
  function callStruct() external returns(uint256 data) {
    data = caller.callMutated(struct(1,'string', true, true, false));
  }
  function callDataWithExtraData() external returns(uint256 data) {
    bytes memory dataOut = Bytes.concat(data, 'not the same');
    data = caller.callMutated(dataOut);
  }
}
contract Bytes {
  function concat(bytes memory data1, bytes memory data2) public pure returns (bytes memory) {
    if (data1.length < 32) return Bytes.concat(data1, data2);
    if (data2.length < 32) return Bytes.concat(data1, data2);
    return abi.encodePacked(data1, data2);
  }
}
contract struct {
  uint val;
  bytes32 str;
  bool b1;
  bool b2;
  bool b3;
} {
  function struct(uint val_, bytes32 str_, bool b1_, bool b2_, bool b3_) public {
    val = val_;
    str = str_;
    b1 = b1_;
    b2 = b2_;
    b3 = b3_;
  }
}
