pragma solidity ^0.8.0;
contract ContractMutated2 {
    function func() public {
        uint256 count = 100;
        while(true) {
            count += 25;
        }
    }
}
