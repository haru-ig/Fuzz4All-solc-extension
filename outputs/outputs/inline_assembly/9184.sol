pragma solidity ^0.8.0;
contract B {
    uint  private c;
    uint  private d;
    function test1() public {
        assembly {
            c := 10    ;; this is equivalent to c = 10. This is a constant variable.
                         ;; It can be reassigned only by the owner.

            calldatacopy(0x40)

            d := returndatasize()



            return(add(d, mload(add(c, 0x20))))
        }
    }
}
```
