pragma solidity ^0.8.0;
contract NewDeprecatedRestrictedMutator {
    event SomeEvent(address indexed eventSource);
    event AnotherEvent(uint indexed a, uint indexed b);

    function emitDeprecatedEvent() public {
        emit SomeEvent(a0);
    }

    function emitEventWithoutDeprecated() public {
        emit AnotherEvent(123, 321);
    }

    address a0;
    address a1;
    uint i;
    uint s;
    constructor () public {
        a0 = a1;
        a1 = 0x01;
        i = 1;
        uint overflow = 0;
        unchecked {
            overflow += s - 18446744073709551615;
        }
        i *= s - overflow;
    }

    modifier onlyA0() {
        assert(msg.sender == a0);
        _;
    }

    modifier onlyA1WithoutDeprecated() {
        assert(msg.sender == a1);
        _;
    }

    modifier onlyA0WithoutDeprecated() {
        assert(msg.sender == a0);
        _;
    }
}
/* Please create a semantically equivalent program to the previous generation
By using `isContract`, the compiler will make sure that the address is a contract.
The compilation will also check the uniqueness of code.
Note that this modifier is _not_ a replacement for the `onlyA0(...)` modifier,
which must implement the whole contract contract logic and return true.
Instead, we define two modifiers:
- `onlyA0(...)` is essentially equivalent to calling it like `function onlyA0()`
or `modifierOnlyA0()`
- `onlyA1(...) {}` is a simplified version of `modifierOnlyA0()` that should be used
instead and return true when it detects that the function call must throw
reentrancy.
The use of modifiers should be minimised, since it is not needed when working
with this complex contract code.
In order to create the function call that will be used to generate this contract code,
we run `truffle generate` on your project root and choose the appropriate modifier, and it will be generated.
Here are two examples of how to create it manually:
```
pragma solidity ^0.8.0;

contract Foo {
    function bar() public {
    }

    modifier onlyBar() {
        require(msg.sender == bar() || msg.sender == owner());
        _;
    }

    modifier onlyBarEmergency {
        require(msg.sender == bar() || msg.sender == owner());
        _;
    }
}
```
```
pragma solidity ^0.8.0;
