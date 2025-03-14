pragma solidity ^0.8.0;
contract FallbackFunction {
    address payable fallback_;
    address payable payableFallback_;
    constructor(){
        fallback_ = payable(this);
        payableFallback_ = payable(this);
    }

    function calculateAdd(address payable fallback_, address payable payableFallback_, uint input1, uint input2) private pure returns (uint result){
        result = (uint(fallback_.balance) + input1 + input2);
        assert(result == uint(fallback_.balance) + 33);
    }
    function main() public {
        assert(uint(payableFallback_.balance) == 0);
        uint result = calculateAdd(fallback_, payableFallback_, 32, 10);
        assert(result == 33);
        fallback_.transfer(9);
    }
}
