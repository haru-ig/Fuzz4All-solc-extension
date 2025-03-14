pragma solidity ^0.8.0;
library GreeterLibrary {
  fallback function greeterFallback(bytes memory message) internal pure {
    require(msg.value == 7890, "message length");
    echo(message);
  }

  function echo(bytes memory message) internal pure {
    bytes memory result = "Hello ";
    assembly {
      result := add(result, message)
    }
    emit Echo(address(this), message, result);
  }
}
