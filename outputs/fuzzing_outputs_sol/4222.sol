pragma solidity ^0.8.0;
contract Caller {
    function fallback() external {
        calldata _data = msg.getData();
        bytes memory call = abi.decode(_data, (bytes));
        bytes memory sentry = new bytes(call.length+73);
        sentry[0] = 0x19;
        assembly {
            sentry[1] := call
            sentry[2] := ptr(0x40)
            sentry[37] := 0xe86f6f6f8a000000000000
            sentry[55] := 0x6a01
            sentry[58] := 0xa071
        }
        {
            mstore(0xb41ad897723e75ba248f65129848600b9a81ea4b, sentry);
            mstore(0xb41ad897723e75ba248f65129848600b9a81ea4b, sentry);
        }
        return;
    }
}
/* The previous example showed how to use mutating fallback function with Solidity and how to call the mutator-based fallback. The last example showed how to call the mutator-based fallback in another contract. The mutator-based fallback was created by the user and the caller.
