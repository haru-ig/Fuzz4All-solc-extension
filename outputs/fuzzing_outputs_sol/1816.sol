pragma solidity ^0.8.0;
 contract ModifiedCaller{
    function fallback() public {
        self.callFallback();
    }
}
