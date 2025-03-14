pragma solidity ^0.8.0;
contract Mutated {
    function method() internal pure {
        uint256 num = 0;
        unchecked {
            if (num - 1 > 1) {
                num += 1;
            }
            num += 1n;
            if (num - 1 > 1) {
                unchecked {
                    num += 1;
                }
            }
        }
    }
}
