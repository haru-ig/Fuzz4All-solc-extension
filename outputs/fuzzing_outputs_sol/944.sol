pragma solidity ^0.8.0;
contract ModCall {
    function mod(uint _a, uint _b)  pure public returns (uint r) {
        r = (uint(_a) % uint(_b));
    }

    fallback () public payable returns (uint _sum) {
        _sum = mod(10, 4);
    }
    receive() external payable {}
}
