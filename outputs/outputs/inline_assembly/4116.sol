pragma solidity ^0.8.0;
contract Modifiers {
    uint constant x = 1e12;
    function test (uint x, address) public {
        assembly {
            x := add(x, 32)
            x := add(x, 64)
        }
    }
}

contract SimpleContract {
    function test (uint x) public {
        assembly {
            let x := 0
        }
        x = add(x, x);
    }
}

pragma solidity ^0.8.0;
contract InlineContract {
    uint constant x = 1e12;

    function test (uint x, address) public {
        assembly {
            x := add(x, 32)
        }
    }
}
```
