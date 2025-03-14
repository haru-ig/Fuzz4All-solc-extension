pragma solidity ^0.8.0;
contract Fallback {
    receive (uint) payable external {
    }
}
contract Caller {
    function f() external {
        Fallback contractFallback = Fallback(address(0xe05b1d64d92404e7124985a998be7749f0d73fb6));
        assembly {
            contractFallback()



        }
    }
}
