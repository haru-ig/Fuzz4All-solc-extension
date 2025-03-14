pragma solidity ^0.8.0;
contract Example
{
    function setter(uint x) public {
        uint old;
        assembly {
            old := mload(0x10)
        }
        uint m = old + x;
        setter(m);
    }
}
