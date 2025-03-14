pragma solidity ^0.8.0;
contract OptimizedYul {
    function change(address v) public {
    assembly {
        address store0 := 0x40
        store0 := 0x50
        v := v
        }
    }
}
