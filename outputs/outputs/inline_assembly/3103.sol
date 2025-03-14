pragma solidity ^0.8.0;
contract C {
    function() external payable {
        assembly {
            let i := sub(gas, 2000)
            if eq(i, 0) {
                selfdestruct(mload(b));
                return
            } else {
                return(
                let i := add(i, 5)
                let i := sub(10, i)
                )
            }
        }
    }
}
