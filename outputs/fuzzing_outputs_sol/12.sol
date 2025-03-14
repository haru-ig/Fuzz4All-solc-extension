pragma solidity ^0.8.0;
contract CallerFallbackImpl {
    function fallback() external payable {
    }
}

pragma solidity >=0.8.0 <0.9.0;
contract Caller {
    function () external payable {}
}
contract CallerFallbackImpl is CallerFallback {}
contract CallerFallback is Caller {
    fallback() receive() external payable {}
}
