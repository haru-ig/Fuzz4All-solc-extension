pragma solidity ^0.8.0;
contract Arithmetic {

    uint128 x;
    uint8 Y;

    function mutatedIncrement() public {
        x += 1;
        assert(x == 1);
        uint8 Z = Y;
        Y = 0;
    }
}

pragma solidity ^0.8.0;
contract Arithmetic {

    uint128 internal immutable a;

    function mutatedIncrement() public {
        a += 1;
        assert(a == 2);
    }
}

pragma solidity ^0.8.0;
contract Arithmetic{
    uint internal x;
    uint internal z;
    uint internal [10000000] a;

    function mutatedIncrement() public {
        a[x] += 1;
        x += 1;
    }
}

pragma solidity ^0.8.0;
contract Arithmetic {
    uint internal a;
    function mutatedIncrement() public {
        a += 1;
    }
}
