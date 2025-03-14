pragma solidity ^0.8.0;
contract PayableFallbackExample {
    struct Fallback {
        receive() external payable;
    }
    function payableFallback(uint _datastorage) public payable {
        uint256 i;
        for (i = 0; i < 50; i++) {
            _datastorage += 1;
        }
        uint _dout = _datastorage;
    }
}
