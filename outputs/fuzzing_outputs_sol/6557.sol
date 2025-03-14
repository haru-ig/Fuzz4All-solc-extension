pragma solidity ^0.8.0;
library Lib {
    function bar() public pure returns (uint) {
        return Lib.foo();
    }
}

pragma solidity ^0.8.0;
contract ContractCall {
    function test() public {
        Lib.bar();
    }
}
