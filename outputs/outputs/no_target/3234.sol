pragma solidity ^0.8.0;
contract twoEights {
    function f() public pure returns (int, int)
    {
        return (1234567890, 1234567890);
    }
}

pragma solidity ^0.8.0;
contract eight {
    function f() public pure returns(int8)
    {
        return 1234567890;
    }
}
