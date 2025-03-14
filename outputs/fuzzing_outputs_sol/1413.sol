pragma solidity ^0.8.0;
contract MutatedFallbackExample{
    function fallback(bytes4 _funcSignature) external {
        if (block.timestamp!= 0)
            throw new Exception();
    }
}
