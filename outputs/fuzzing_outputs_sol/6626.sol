pragma solidity ^0.8.0;
contract FallbackMutated {
    function fallback() public { }
}
contract FallbackMutatedFallbackInterface {
    function fallback() public;
}
contract FallbackMutatedFallback {
    function fallback() public { }
}
contract FallbackMutatedFallbackExample {
    FallbackMutatedFallbackFallbackInterface contractA;
    FallbackMutatedFallbackExample internal contractB;
    constructor(FallbackMutatedFallbackInterface _contractA, FallbackMutatedFallbackExample _contractB) {
        contractA = _contractA;
        contractB = _contractB;
    }
    function a() public { }
    function fallback() public {
        if (contractA.isFallback()) {
            contractA.setFallback();
            contractB.a();
        } else {
            contractB.a();
        }
        contractA.setFallback();
        contractB.fallback();
    }
}
