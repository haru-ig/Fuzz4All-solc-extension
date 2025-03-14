pragma solidity ^0.8.0;
contract MutatedSematic2 {
    contract Inner {
        uint x;
        function f() public {
            x++;
        }
    }
}
