pragma solidity ^0.8.0;
contract myContract {
    function myFunction() public {
        if (true) {
            uint i = 2 ** 256;
            uint m;
            assembly { m := max(0, i) }
            fallbackValue = m;
        }
    }
}
