pragma solidity ^0.8.0;
contract Mutation2_SEM9_SEM20_SEM24_SEM27_Semantics_Version_20 {
    function f(uint256[2] memory x) public pure {require(
            x[0] in [3],
            "failed");
            unchecked {
                x[0] = 3;
            }
        }
    }
}

pragma solidity ^0.8.0;
contract Mutation2_SEM9_SEM20_SEM24_SEM27_ABC_Version_2 {
    function f(uint256[2] memory x) public pure {require(
            x[0] in [3],
            x[0] >= 3,
            "failed");
            unchecked {
                if (x[1] < 3) {
                    x[0] = 3;
                }
                x[1] = 4;
            }
        }
    }
}

pragma solidity ^0.8.0;
contract Mutation2_SEM9_SEM20_SEM24_SEM27_ABC_Version_2_Specific_Condition {
    function f(uint256[2] memory x) public pure {require(
                x[0] < 3,
                "failed");
                unchecked {
                    x[0] = 3;
                }
            }
        }
