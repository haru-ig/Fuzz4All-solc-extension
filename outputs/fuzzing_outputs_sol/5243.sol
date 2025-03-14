pragma solidity ^0.8.0;
contract Mutator2
{
        function c() private pure {}
}

pragma solidity ^0.8.0;
contract Mutator0
{
        function c() public pure { return new Mutator1(); }
}

pragma solidity ^0.8.0;
contract Mutator3
{
        function c() public pure { return true; }
}
