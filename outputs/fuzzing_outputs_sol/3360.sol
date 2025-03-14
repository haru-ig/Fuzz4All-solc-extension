pragma solidity ^0.8.0;
contract S {
    function mutualCall() public pure {
        (uint128 x, ) = S(address(this)).mutualSend(address(S(address(this)).mutualReceive()));
    }
    function mutualCallFallback() public payable pure {
        (bool x, ) = S(address(this)).mutualSend(address(S(address(this)).mutualReceive()));
    }
}
