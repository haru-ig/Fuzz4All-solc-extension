pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidityPointers2 {
   SemanticallyEquivalentSolidityPointers5 x =SemanticallyEquivalentSolidityPointers5(0b);
   SemanticallyEquivalentSolidityPointers5 y =SemanticallyEquivalentSolidityPointers5(0b)
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidityPointers3 {
   SemanticallyEquivalentSolidityPointers5 x =SemanticallyEquivalentSolidityPointers5({0b, 0b});
   SemanticallyEquivalentSolidityPointers5 y =SemanticallyEquivalentSolidityPointers5({0b, 0b})
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidityPointers4 {
   SemanticallyEquivalentSolidityPointers2 z =SemanticallyEquivalentSolidityPointers2(0b);
   SemanticallyEquivalentSolidityPointers2 a =SemanticallyEquivalentSolidityPointers2(0b)
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidityPointers4b {
   SemanticallyEquivalentSolidityPointers2 x =SemanticallyEquivalentSolidityPointers2({0b, 0b});
   SemanticallyEquivalentSolidityPointers2 x =SemanticallyEquivalentSolidityPointers2(0b)
}
