pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample73 {
    constructor(uint s) public {
        uint a = s % 250;
    }
    function getA() public view returns (uint) {
      return a;
    }
}

contract CallMeMaybe {
    uint someVariable = 0;
    constructor() public {
        bytes memory byteData = abi.encodeWithSignature("getA()");
        (bytes memory data) = deployBytecode.selectorToFuncMap[0](keccak256(byteData));
        (bool success, bytes memory result) = MixedContactsExample72.deployInterface.call(data);
        require(success, "Deploy fail");
        emit LogMessage(msg.sender, address(this), "Call result", result);
        uint resultAsUint = abi.decode(result, (uint));
        emit LogMessage(msg.sender, address(this), "Call result as uint", resultAsUint);
    }
    event LogMessage(address sender, address contractAddress, string text, bytes data);
}
