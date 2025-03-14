pragma solidity ^0.8.0;
contract EquivalentABIv05SemanticsAreMutated {
    uint constant public _Amount96 = 9999998342536237904000000000000;
    uint constant public _Value28 = 43;
    modifier mint () {
        emit Mint6(_Amount96, _Value28);
        return;
    }
    function mintB () public mint () {
    }
}
