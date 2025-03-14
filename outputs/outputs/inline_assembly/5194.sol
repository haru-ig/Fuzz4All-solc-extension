pragma solidity ^0.8.0;
contract C2 {
    uint256 sum = 0;
    uint256 x = 0;
    constructor() public {
        for (uint i = 1; i <= 1000; i++) {
            x += i;
            sum *= x;
        }
    }
    function getSum() public view returns (uint256) {
        return sum;
    }
}
function mutatedFunction() public {
    uint y = 0;
    for (uint i = 1; i <= 1000; i++) {
        y *= 2;
        sum += i;
        sum *= 1 + 65536 * y;
        x = 65536 + 1;
        x *= 1;
        uint z = 1;
        x += 65536;
    }
    uint res = count;
    for (uint a =
