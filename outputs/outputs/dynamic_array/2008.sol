pragma solidity ^0.8.0;
contract FunctionalEquivalence_NestedDynamicArrayAssignment_12 {
    contract D {
        function d() pure public {
        }
    }
    contract E {
        function e() public onlyOwner {
            D d;
            require(d.d() == 88);
        }
    }
}






pragma solidity ^0.8.0;
