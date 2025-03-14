pragma solidity ^0.8.0;
contract LowLevelFallbackExample{
    struct FallbackData {
        uint value1;
        uint value2;
    }
    function originalFallback(FallbackData storage data) external {
        data.value1 = 1;
    }
    function lowLevelFallback(FallbackData memory data) external payable {
        data.value1 = 2;
    }
}
