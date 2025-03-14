pragma solidity ^0.8.0;
interface Contract {
    function method() external;
}

contract ContractWithFallback {
  Contract public contract1;
  Contract public contract2;
  event Log(bytes calldata);
  event Log2();
  event Log3(uint);
  event Log4(address);
  event Log5(address, bytes calldata);
  function contract1Fallback() public payable returns (uint) {
    contract1.method();
    return uint(0);
  }
  function contract2Fallback() public payable returns (uint) {
    contract2.method();
    return uint(0);
  }
  function setContract1Fallback(Contract _cf) public {
    contract1 = _cf;
  }
  function setContract2Fallback(Contract _cf) public {
    contract2 = _cf;
  }
  function emitLog(uint _data) public {
    emit Log(_data);
  }
  function emitLog2() public {
    emit Log2();
  }
  function emitLog3(uint _d) public {
    emit Log3(_d);
  }
  function emitLog4(address _a) public {
    emit Log4(_a);
  }
  function emitLog5(address _a, bytes memory _b) public {
    emit Log5(_a, _b);
  }
}

uint8 _id;
bytes32 public constant _name = "Fallback (contract)";
address public creator = msg.sender;
contract Fallback {
  bytes32 _name;
  bytes32 public constant name() public view returns (bytes32) {
    return _name;
  }
  constructor() {
    _name = _name;
  }





  fallback() external payable {}
  constructor(address _f) {
    _name = _f.functionId();
  }
}
contract FallbackContract is Fallback{
  function f() public payable returns (uint8) {
    require(msg.value == 1 ether);
    address self = this;
    {self}.f();
    return uint8(0);
  }
}
contract FallbackContractWithException is Fallback{
  function f() public payable returns (uint8) {
    {throw 30;}.f();
    return uint8(0);
  }
}
contract Caller {
  event Log();
  function f() public returns (uint8) {
    address self = this;
    self.f();
    return uint8(0);
  }

  fallback() external payable {}
}
