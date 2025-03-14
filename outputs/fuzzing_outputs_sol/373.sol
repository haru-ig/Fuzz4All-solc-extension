pragma solidity ^0.8.0;
contract MutatedContract {
    function mtest() public {
        ContractWithFallbackModifier5 instance = new ContractWithFallbackModifier5();
        uint y;
        uint x;
        (y, x) = instance.fallback(Greeter.Caller);
    }
}

pragma solidity ^0.8.4;
contract NoFallback {
    constructor() {
        contract address;
        (address, ) = ContractWithFallbackModifier5.foo(Greeter.Caller);
    }
    fallback(uint) public { }
    receive() error return { }
}

pragma solidity ^0.8.4;
contract ContractWithFallbackModifier6 {
    function mtest(Greeter) public returns (uint[2]){ return [uint(10)]; }
    function fallback(Greeter) public returns (uint[2]){ return [uint(20)]; }
}
