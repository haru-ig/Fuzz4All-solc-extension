pragma solidity ^0.8.0;
contract Caller {
    function doWork() public {
        CallerWithFallback c1 = new CallerWithFallback();
        bool success = c1.transfer(msg.sender, 100);
        address payable c2 = address(c1);
        c2.transfer(msg.sender, 100);
        callFallbackMethod();
    }






    function callFallbackMethod() public {
        (bool success, bytes memory returndata) = msg.sender.call{value: msg.value}(abi.encodeWithSignature("fallback()"));
        assert(success);
    }
}
