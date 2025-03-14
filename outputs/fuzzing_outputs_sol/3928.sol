pragma solidity ^0.8.0;
contract Example11 is Example10 {
  fallback () public payable {}
  function () public payable {
    if (msg.data.length <= 1) {
      fallback();
    } else {
      var buffer = msg.data;
      buffer[0] = 1;
      try {
        fallback(1, 2, buffer);
      } catch (f) {
        var bufferAfter = buffer;
        assembly {
          returndatacopy(buffer.ptr(), 0, bufferAfter)
        }
      }
    }
  }
}

pragma solidity ^0.8.0;
contract Example12 is Example10 {
  fallback() public payable {

  }
}
