pragma solidity ^0.8.0;
contract Caller {
    function fallback () external {
        self.transferToFallback();
        self.transferToFallback();
        self.transferToFallback();
        self.transferToFallback();
    }
    function transferToFallback () internal {
        (bool success, ) = self.call{value: 1 ether}("");
        require(success);
    }
}
