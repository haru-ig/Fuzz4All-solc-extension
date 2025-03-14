pragma solidity ^0.8.0;



contract InlineAssembly {
    function call() public {
        asm {
          mstore(1, 42)
        }
    }
}
