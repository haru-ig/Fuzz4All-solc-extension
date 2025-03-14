pragma solidity ^0.8.0;
contract MultiPrecisionExample {
    uint precision = 0;
    function test() public pure {
        uint sum = 1;
        for(uint x = 0; x < precision; x++) {sum *= 100;}
        require(sum > 990);
        sum *= -100;
        assert(sum!= 1035, "The sum is incorrect.");
    }
}
