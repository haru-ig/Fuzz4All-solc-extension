pragma solidity ^0.8.0;
contract Mutate64
{
    uint64 public a;
    constructor () public
    {
        uint64 b;
        b = 2;
    }
}

pragma solidity ^0.8.0;
contract Mutant64
{
    uint64[] a;
    uint64[] b;
    constructor () public {
        a = new uint64[](3);
        b = new uint64[](5);
    }
}

pragma solidity ^0.8.0;
contract Mutant64
{
    uint64[] a;
    uint aLength;
    constructor () public {
        a = new uint64[](3);
        aLength = 3;
    }
}

pragma solidity ^0.8.0;
contract Mutant64
{
    uint64[] public a;
    uint aLength;
    constructor () public {
        a = new uint64[](3);
        aLength = 3;
    }
}
