pragma solidity ^0.8.0;
contract SemanticMutation4 {
    uint8 test()
        public
        pure
        returns (uint32 x)
    {
        uint32 v;
        while (true) { v >>= 1; }
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation5 {
    uint8 test0()
        public
        pure
        returns (uint32 x)
    {
        uint32 v;
        v >>= 1;
        return v;
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation6 {
    uint8 test()
        public
        pure
        returns (uint32 x)
    {
        uint32 v;
        while (v & (v >> 1)) == 0 { v >>= 1; }
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation7 {
    uint8 test()
        public
        pure
        returns (uint32 x)
    {
        uint32 v;
        v >>= 1;
        return v >> 1;
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation8 {
    uint8 test0()
        public
        pure
        returns (uint32 x)
    {
        x >>= 1;
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation9 {
    uint8 test()
        public
        pure
        returns (uint32 x)
    {
        uint32 v;
        uint32 w;
        v >>= 1;
        v >>= 1;
        w = v >>= 1;
        x = v & w;
        return x;
    }
}
