pragma solidity ^0.8.0;
contract EquivalentABIv05SemanticsAreMutatedAfterUpgradeToV08 {
    uint constant public _Amount96 = 9999998342536237904000000000000;
    uint constant public _Value28 = 43;
    event Mint6 (uint amount, uint value);
    function mintB () public {
        emit Mint6(_Amount96, _Value28);
    }
}





pragma solidity ^0.8.0;
contract EquivalentABIv08SemanticsAreAffected {

    uint constant public _Amount = 10;


    address constant public _Recipient = 0xE1ad18610B41A7c23429b9e161356D971C89Ae38;


    bytes20 constant public _Bytes20 = 0xAD0E433E8DE4922EA69d26a1cA7B5372bEEde9aA;
}
