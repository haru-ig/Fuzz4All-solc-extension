pragma solidity ^0.8.0;
contract SemanticSimilar5{
  uint256 v;
}




pragma solidity ^0.8.0;
contract SemanticSimilar6{
  uint256 v;
}
pragma solidity ^0.8.0;


contract Caller {

  function fallback() {
    bool isValidFunctionCall;
    address toAddress;
    bytes memory data;
    (isValidFunctionCall, toAddress, data) =
        abi.decode(msg.data, (bool, address, bytes));
    if (!isValidFunctionCall) {
      toAddress.transfer(msg.value);
    } else {
      data.length > 0 && abi.encodeWithSelector(1).value(999e17)();
    }
  }


  function fallbackEther() public pure {
    if (msg.value > 1 ether) msg.sender.transfer(msg.value);
  }
}
pragma solidity ^0.8.0;


contract RecoverAddress {
  function RecoverAddress.callBack() public pure {
    (bool success, address memory addressOfOwner, ) = address(this).call{
      value: uint(100000000000)
    }("");
    assert(!success);
    assert(addressOfOwner == msg.sender);
  }
}
pragma solidity ^0.8.0;


contract Test {
  event Log(uint id);

  uint id;

  contract FallbackFunction {
    fallback() external {
      emit Log(id);
    }
  }

  function Test.fallback() external payable {
    emit Log(id);
  }
}
pragma solidity ^0.8.0;

import 'hardhat/console.sol';
contract Fallback {
  fallback () external {
    console.log("Fallback function executed successfully");
  }
}
pragma solidity ^0.8.0;
