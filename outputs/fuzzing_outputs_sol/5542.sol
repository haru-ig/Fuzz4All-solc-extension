pragma solidity ^0.8.0;
contract fallbacksemantic_dynamic
{
    address payable payableFallback1 = address(uint160(address(this)));
    bytes36 payableFallback2 = keccak256(abi.encode("string data"));
    address payableFallback3 = fallbacksemantic_static;
    function f() public pure {
        if (msg.value > 0) {
            receive();
        }
    }

    fallbacksemantic_static payableFallback4 = payable(address(0));
    fallbacksemantic_dynamic payableFallback5 = payable(address(0));
    fallbacksemantic_dynamic payableFallback6 = payableFallback2;
    fallbacksemantic_dynamic payableFallback7 = fallbacksemantic_static;
    fallbacksemantic_dynamic payableFallback8 = fallbacksemantic_dynamic payableFallback5;
    fallbacksemantic_dynamic payableFallback9 = fallbacksemantic_dynamic payableFallback4;
    fallbacksemantic_dynamic payableFallback10 = fallbacksemantic_dynamic payableFallback3;

    receive () external payable {

    }
}
