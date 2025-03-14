pragma solidity ^0.8.0;
contract Test36 {
    uint[] public arr;
    constructor()
        public
        {
        arr = new uint[](33);
        for (uint index = 0; index < 33; ) {
            arr[index] = uint(0xfffffffffffffffffff);
            uint sz = (uint256) (uint(0xfffffffffffffffffff) * (1 + cos(2 * block.timestamp)));
            setArrSize2(sz);
            index += sz;
        }
    }
}
