pragma solidity ^0.8.0;
contract SemanticMutation16 {
    function get()
        public
        pure
        returns (uint)
    {
        uint x = 0xfffffffffffffffffffffff8;
        uint m = 0xfffffffffffffffffffffffe;
        int z = int(-(int)x / int(((int)x >> m) + 1));
        return x >> z;
    }
}
