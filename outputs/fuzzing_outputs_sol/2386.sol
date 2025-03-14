pragma solidity ^0.8.0;
contract CallerEmulatesFallback {
  uint i = 0;
  receive () external fallback {
    i = i + 1;
  }
  function emulatesFallback_fallback() external {
    i = i + 1;
  }
}
contract CallerEmulatesFallback_receiver {
  uint i = 0;
  receive () external fallback {
    i = i + 1;
  }
  function emulatesFallback_receiver() external {
    i = i + 1;
  }
}
contract CallerEmulatesFallback_fallback {
  uint i = 0;
  receive () external fallback {
    i = i + 1;
  }
  function emulatesFallback_fallback() external {
    i = i + 1;
  }
}
contract CallerEmulatesFallback_fallback_receive {
  uint i = 0;
  receive() external fallback {
  }
  function emulatesFallback_fallback_receive() external {
  }
}
contract CallerEmulatesFallback_receive {
  uint i = 0;
  receive() external {
    i = i + 1;
  }
  function emulatesFallback_receive() external {
    i = i + 1;
  }
}
