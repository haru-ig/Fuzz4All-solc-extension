pragma solidity ^0.8.0;
contract MutatedContactsExample161 {
    function () external {

        assembly {
            let mut sum := 0
            for (i := 0; i < 100; i++) {
                sum := add(sum, 1)
            }
        }
        require(sum == 100);
    }
}
