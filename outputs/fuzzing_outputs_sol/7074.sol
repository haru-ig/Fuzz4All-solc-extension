pragma solidity ^0.8.0;
contract Caller {
    function call(address _fallback) public {
        callWithCallResult(_fallback);
    }

    function callWithCallResult(address _fallback) public {
        (uint256 result, ) = Caller._callWithSuccessResult(_fallback);
    }

    function _callWithSuccessResult(address _fallback) public returns (uint256) {
        return callSuccess(_fallback);
    }

    function callSuccess(address _fallback) public returns (uint256) {
        require(true, "This fallback function can do nothing.");
        fallback();
    }
}
