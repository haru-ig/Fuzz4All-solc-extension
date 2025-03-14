pragma solidity ^0.8.0;
contract ContractWithFallbackModifier3_4 {
    function foo() public returns (address) { return address(0); }
    function foo2() public {
      contract ContractWithFallbackModifier3 fallback = ContractWithFallbackModifier3(foo());
      fallback.fallback();
    }
}

pragma solidity ^0.8.0;

contract Caller {
    function getFoo() public returns (address) {
        return address(new ContractWithFallbackModifier3());
    }
}
