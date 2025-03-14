pragma solidity ^0.8.0;
contract Mutater13 {
    struct Calldata {
      address sender;
      bytes calldata data;
    }
    constructor(address _sender, bytes calldata _data) {
      this.sender = _sender;
      this.data = _data;
    }

    function() public payable {
      transfer(msg.value);
    }

    function withCallData(bytes calldata newData) public {
      require(msg.sender == sender);
      data = newData;
    }
    address public sender;
    bytes public data;
}

pragma solidity ^0.8.0;
contract CreateContract {
    address public contractAddress;
    constructor(address _contractAddress) {
       contractAddress = _contractAddress;
    }
    function createFunction() public returns (address) {
        address _contractAddress = address(new Mutater11(contractAddress));
        return _contractAddress;
    }
    function createWithFallbackFunction() public returns (address) {
        address _contractAddress = address(new Mutater11(contractAddress));
        return address(new Mutater11(_contractAddress));
    }
}
