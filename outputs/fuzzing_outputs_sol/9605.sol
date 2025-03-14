pragma solidity ^0.8.0;
contract EtherFallback2 {
    function test() public {
        uint256[] memory somearray = [ 1, 2, 3];

        assembly {
            if eq(add(somearray, 20000), 20000) {
                pop(0x100)
                return 20000
            }
            return 1
        }
    }
}
