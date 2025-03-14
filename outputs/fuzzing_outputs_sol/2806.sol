pragma solidity ^0.8.0;
interface MutatedCaller {
    function modifyCall(Caller2 caller) external returns (bool);
}
