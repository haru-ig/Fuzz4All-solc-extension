pragma solidity ^0.8.0;
library TestLib {
    contract TestContract {
        uint[2] a;
        function f() public view returns (uint[2]{ a0,a1 }) a0 {
            return (a[0],a[1]);
        }
    }
}
