pragma solidity ^0.8.0;
contract Mutant
{
    uint256 _a;
    function setA() public
    {
        _a *= 2;
    }

    function getA() public pure
    returns (uint256)
    {
        return _a;
    }
}

pragma solidity ^0.8.0;
contract MutatedMutant
{
    function mutatedFunction()
        public
        pure
        returns (bool)
    {
        Mutant m = Mutant(this);
        m.setA();
        return (m.getA() > 0);
    }

    function getMutant() public pure
    returns (Mutant)
    {
        return Mutant(this);
    }
}
