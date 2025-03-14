pragma solidity ^0.8.0;
contract Caller {
  MutantFallback3 fallbackInstance;
  bytes32 _msgSender() = msg.sender;
  bytes32 public __fallbackFunction__;
  address __address__;

  struct TestResult {
    bool success;
  }
  TestResult private __result;

  bytes32 public __signature__;

  modifier setFallback(MutantFallback3 f)
  {
    fallbackInstance = f;
    __fallbackFunction__ = bytes32(uint256(uint(this)));
    __signature__ = bytes32(uint256(uint(this)));
    __address__ = address(0);
    _;
  }

  constructor(MutantFallback3 f) public {
    fallbackInstance = f;
    __fallbackFunction__ = bytes32(uint256(uint(this)));
    __signature__ = bytes32(uint256(uint(this)));
  }

  fallback() public {
    __result = TestResult(true);
  }

  function __callback(bytes32 functionType, bytes memory data, bytes memory signature) public {
    __signature__ = signature;
    bytes memory expected = hex"000000000000000000000000000000000000000000000000000000000000010";
    if (functionType == __fallbackFunction__) {
      __address__ = _msgSender();
      if (msg.value == 0) {
        address to = msg.sender;
        require(msg.sig!= bytes32(0), "TestFailure1");
        bytes memory result = fallbackInstance.myFallback(1);
        bytes mem actual = abi.encodePacked(to, 0, result);
        require(actual.length <= 0xffff, 'TestFailure2');
        to.transfer(2*10**9);
      } else {
        require(msg.sig!= _msgSender(), "TestFailure1");
        bytes memory result = fallbackInstance.myFallback(1);
        bytes mem actual = abi.encodePacked(msg.sender, 0, result);
        require(actual.length <= 0xffff, 'TestFailure2');
      }
    } else if (functionType == __address__ && expected == signature) {
      require(checkERC20Balance(address(_msgSender()), 1, 1000) == 1000, 'TestFailure');
    } else {
      print("Invalid function: ", functionType, " ", bytesToString(functionType), " ", bytesToString(expected), " ", bytesToString(signature), " ", bytesToString(msg.sig));
    }
  }

  function print(string memory) public {
    if (_msgSender()!= address(0)) {
      msg.sender.transfer(1);
    }
  }

  function getCallData() public view returns (bytes memory) {
