pragma solidity ^0.8.0;
contract mutatedY {
    using Math for uint256;
    uint256 public a;
    uint256 public b;
    uint256 internal f;
    uint256 public internalF;
    uint16 internal x;
    function test(uint256 _a) public {
        x = 2;
        f = _a;
        a = 1;
        (a,b) = (a.add(b),_a.add(c));
    }
    function func() public {
        uint128 k = 2;
        x = 1;
        uint256 b;
        uint256 c;
        if (b = x + 1 + c) {
            bytes memory x = "0x00";
        }
        internalF = mod((a + b),2^27);
        internalF = mod((f + x),_a.add(c));
    }
    function mod(uint256 a,uint256 b) public pure returns(uint256){
        return (a % b) + b;
    }
}
