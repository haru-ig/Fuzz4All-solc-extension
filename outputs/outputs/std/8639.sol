pragma solidity ^0.8.0;
contract MutationEquivalence34
{
    uint x;

    constructor()
    {
        x = 0xDEADBEEF90CAFDEE2D7B5C50AC26330CE771C86;
    }
}

pragma solidity ^0.8.0;
contract MutationEquivalence53
{
    uint x;

    constructor()
    {
        x = 0xDEADBEEF90CAFDEE2D7B5C50AC26330CE771C868000000000000000000000000000;
    }
}

pragma solidity ^0.8.0;
contract MutationEquivalence77
{
    uint x;

    constructor()
    {
        x = 0xDEADBEEF90CAFDEE2D7B5C50AC26330CE771C86739F6F9557573B2BA967B9387;
    }

    uint mtimes(uint x0, uint x1)
    internal pure
    returns(uint)
    {
        uint product = 0;
        while (x0 > 0) {
            if (x0 & 1!= 0)
                product = product * x1;
            x0 = x0 >> 1;
            x1 = x1 >> 1;
        }
        return product;
    }
}
