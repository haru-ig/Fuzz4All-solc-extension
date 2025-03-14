pragma solidity ^0.8.0;
contract BetterCase7 {
    using SafeMath for uint;
    struct BetterCase7 {
        mapping(uint => uint) arr;
        uint sum;
    }
    function betterCase() public pure returns (BetterCase7 memory) {
        BetterCase7 memory b7;
        b7.arr[0] = 2;
        b7.arr[1] = 1;
        b7.sum = 6;
        return (b7);
    }
    function f(BetterCase7 memory b7) public pure {
        b7.arr[0] = b7.arr[0].add(1);
        b7.sum = b7.sum.sub(1);
    }
}
