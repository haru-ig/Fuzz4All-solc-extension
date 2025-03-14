pragma solidity ^0.8.0;
contract DeprecatedRestrictedMutator2 {
    address a1;
    address a0;
    uint i;
    uint s;
    constructor () public {
        a0 = a1;
        a1 = address(0x01);
        i = 1;
        uint overflow = 0;
        unchecked {
            overflow += s - 18446744073709551615;
        }
        i *= s - overflow;
    }



    function contractDeprecatedByDscContractUpgrade() public view {
<<<<<<< HEAD
=======
        a0;
>>>>>>> 6b2bc2c1c2414ee4d882a4542c255c9bb351bc19
    }
}
