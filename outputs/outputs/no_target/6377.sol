pragma solidity ^0.8.0;
contract semanticC {
    function f(uint8 a) public returns (uint256) {
        uint m = a%2;
        if( a >= 1 && m == a )
            throw;
        return m;
    }
}
