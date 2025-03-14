pragma solidity ^0.8.0;
interface Caller {
    event Log();
    function f() external returns(bool);
}




pragma solidity ^0.8.13;

contract Caller {
    event CallerEvent(address caller, uint);
    constructor (address account) {}

    function callAndLog(address callee) external returns (bool) {
        (bool success, bytes memory data) = callee.call{gas : 0}("");
        if (success) {
            emit CallerEvent(callee, 1);
        }
        return success;
    }
}
