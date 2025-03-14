pragma solidity ^0.8.0;
contract Contract {
    function foo() external view returns (uint) {
        uint i = 500;

        while(true) {
            if (i > 10000) {
                require(false);
            }
            i++;
            i = mutator.modify();
        }
    }
}
