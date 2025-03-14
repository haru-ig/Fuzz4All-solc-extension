pragma solidity ^0.8.0;
interface FallbackCaller2 {
    function fallback(string memory _data) external payable;
}

pragma solidity ^0.8.0;
contract Example {
    function example() public {
        MutatedCaller2 f;
        try f() payable { } catch {
            bytes memory _data = abi.decode(msg.data, (string));
            revert(_data);
        }
    }
    address payable receiver;
    function () external payable {
        receiver.transfer(msg.value);
    }

    FallbackCaller2 f;
    function f() public {
        try f() catch {}
    }
}

```
