pragma solidity ^0.8.0;
contract MutateStringTo134
{
    string memory _string;
}

pragma solidity ^0.8.0;
contract MutateStringTo100
{
    struct Data
    {
        uint32 a;
        mapping (uint256 => string) b;
        string c;
        uint d;
        struct Nested
        {

            uint e;
        }
        mapping (uint256 => Nested) f;
        Data deep;
    }
}
