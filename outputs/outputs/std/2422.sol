pragma solidity ^0.8.0;
contract MyContract {
    contract SubContract is Equivalent {
        uint foo;

        constructor(uint32 x) {
            foo = x-2;
        }

        function bar() public {
            console.log("I'm a child");
        }
    }
}
