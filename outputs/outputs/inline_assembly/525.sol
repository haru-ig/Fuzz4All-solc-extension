pragma solidity ^0.8.0;
contract OptimizerExample {
  bytes constant emptyByteArray = "".bytes;



  bytes memory prevBytes;
  bytes memory prevBytesOptimize;
  bytes memory emptyBytes;
  bytes memory emptyBytesOptimize;

  EVM.Operation memory evmOpCode;

  function optimizeUsingInlineAssembly(bytes32 _byteString) public pure
    returns (bytes memory)
  {
    string memory opString = bytesToString(_byteString);


    prevBytesOptimize = prevBytes;
    prevBytes = emptyBytes;
    prevBytesOptimize = emptyBytes;
    emptyBytesOptimize = emptyBytes;
    prevBytesOptimize = emptyBytes;
    prevBytesOptimize = emptyBytes;
    prevBytesOptimize = emptyBytes;
    prevBytesOptimize = emptyBytes;
    prevBytesOptimize = emptyBytes;
    prevBytesOptimize = emptyBytes;
    prevBytesOptimize = emptyBytes;
    prevBytesOptimize = emptyBytes;
    prevBytesOptimize = emptyBytes;
    prevBytesOptimize = emptyBytes;
    prevBytesOptimize = emptyBytes;
    prevBytesOptimize = emptyBytes;
    prevBytes = emptyBytes;
    prevBytesOptimize = emptyBytes;

    evmOpCode = EVM.Operation.ADD;





    emptyBytesOptimize = EVM.execute(evmOpCode);
    prevBytesOptimize = EVM.execute(evmOpCode);
    prevBytesOptimize = EVM.execute(evmOpCode);
    prevBytesOptimize = EVM.execute(evmOpCode);
    prevBytesOptimize = EVM.execute(evmOpCode);
    prevBytesOptimize = EVM.execute(evmOpCode);
    prevBytesOptimize = EVM.execute(evmOpCode);
    prevBytesOptimize = EVM.execute(evmOpCode);
    prevBytesOptimize = EVM.execute(evmOpCode);

    return prevBytesOptimize;
  }

  function optimize() public returns (bytes memory) {
    return optimizeUsingInlineAssembly(bytes32(0));
  }
}
