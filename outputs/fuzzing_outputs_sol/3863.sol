pragma solidity ^0.8.0;
contract Example4 {
    bytes4 constant FALLBACK_BYTES4 = 0x10b3b061;
    function __fallback () public {
    }

    function test () public pure  {
        bool test = type(Example4).interfacesupports(type(Example4.IFallback));
        assert(test == true);
        assert(type(Example4).interfaceId(Example4.IFallback));
        assert(type(Example4.IFallback).interfaceId() == 0xffffffff80e914);
        assert(Example4.IFallback.interfaceId() == 0xffffffff80e914);
        assert(Example4.interfaceId(Example4.IFallback) == 0xffffffff80e914);
    }
}
