pragma solidity ^0.8.0;

contract Equivalent {
    constructor(){
    }
    function mutantFunction() public payable { }
    function nonmutantFunction() public payable { }
    fallback private mutantFallback = mutantFunction;
    fallback function nonmutantFallback() public payable { }
    function mutantFallback() public payable {
        nonmutantFallback();
    }
}

contract Caller {
    function fallbackFunction() public {
        Equivalent evaled = Equivalent(0x863501227afD43F430F7E01E63b42d03EDE5DFAe);
        evaled.nonmutantFunction();
    }
    function nonpayableFallbackFunction() public {
        Equivalent evaled = Equivalent(address(0x863501227afD43F430F7E01E63b42d03EDE5DFAe));
        evaled.nonmutantFunction();
    }
    function payableFallbackFunction() public payable {
        Equivalent evaled = Equivalent(address(0x863501227afD43F430F7E01E63b42d03EDE5DFAe));
        evaled.nonmutantFunction();
        evaled.payableFallbackFunction();
    }
}
