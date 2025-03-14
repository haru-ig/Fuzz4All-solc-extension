pragma solidity ^0.8.0;
contract Repeating_contract27 {
    function repeatedCall() public {
        assembly {
            x := constant1
            y := constant2
        }
        while (true) {
            x = x * constant2;
        }
    }
}
