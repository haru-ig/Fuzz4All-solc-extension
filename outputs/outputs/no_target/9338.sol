pragma solidity ^0.8.0;
contract semanticallyEquiv10
{
}

pragma solidity ^0.8.0;
contract semanticallyEquiv17
{
    uint256 foo;

    string constant bar = "a";
    uint constant z = 1;
    function f() internal pure returns(uint) {
        if ((1 + 2) / (z / 2)) == 1 {
            foo = 12;
        }
        else {
            foo = a;
        }
        uint256 f = 11 / foo;
        return f;
    }
}
