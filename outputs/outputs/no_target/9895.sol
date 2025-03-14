pragma solidity ^0.8.0;
contract c {
    uint m = 3;
    constructor() {
        m += m;
    }
}

contract c2 {
    uint m = 3;
    constructor() {
        bytes memory encodedFunc = abi.encode(abi.decode(this.function0.selector, (function() view internal returns (uint)), ), );
        bytes memory encodedMemorySize = abi.encodePacked(abi.encodePacked(uint256(0), m));
        assembly {
            m := m+m
            m := m+m
            m := m+m
            m := m+m
            m := m+m
            m := m+m
            m := m+m
            m := m+m
            m := m+m
            m := m+m
            m := m+m
            m := m+m
            m := m+m
            m := m+m
            m := m+m
        }
        m += m;
        assert(abi.encodePacked(uint256(0), m) == encodedMemorySize);
        assert(abi.encodePacked(uint256(0), m) == encodedFunc);
    }
    uint constant function0 = 0;
    function function0() {
        i x = abi.decode(this.function0.selector, (function() view internal returns (uint)));
        assert(x == uint(6));
    }
}
