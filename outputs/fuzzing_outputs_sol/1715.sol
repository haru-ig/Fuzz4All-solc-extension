pragma solidity ^0.8.0;
interface IFallback {
    function _performAction () internal;
}
contract Fallback {
    function performAction () public returns(IFallback) {
        return address( new Caller() )._performAction();
    }
}

pragma solidity >=0.4.21 <0.8.0;
