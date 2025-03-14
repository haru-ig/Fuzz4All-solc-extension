pragma solidity ^0.8.0;
contract Original {
      payable function foo() public {
          revert("oh");
      }
}
contract Modifies{
    bytes32 constant FALLBACK_STORAGE_SLOT = 0xfffffffffffffffffffffffffffffffffffffffffffffffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    function foo() public {
        bytes memory buffer = new bytes(42);
        buffer[1234] = '0';
        buffer[1235] = '0';
        buffer[1236] = '0';
        buffer[1237] = '0';
        revert(address(this), FALLBACK_STORAGE_SLOT, string(abi.encodePacked(buffer)));
    }
}
