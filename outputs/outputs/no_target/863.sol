pragma solidity ^0.8.0;
contract SemanticCheckMutated5 {
    function set(uint) public {}
    function get() public view returns (uint) {
        return 42;
    }
}
interface I {
    function x() external pure returns (uint);
}
contract Implem4 {
    function x() public pure returns (uint) {
        return 42;
    }
}
contract Implem5 {
    function x() public pure {  }
}
contract Implem2 {
    function x() public pure {
        uint26 _value = 1;
        uint26 _x_x;
        unchecked {
            unchecked {
            }
        }
        unchecked {
            unchecked {
                unchecked {
                    uint26 _tmp1 = 1;
                }
            }
        }
        unchecked {
            unchecked {
                i128 _tmp8 = uint26((uint26(uint26(_tmp1) * 1000)));
            }
        }
        unchecked {
            _x_x = uint26((_tmp8 - 1) / 1000);
        }
        unchecked {
            unchecked {
            }
        }
        unchecked {
            unchecked {
            }
        }
    }
}
contract Implem3 {}
contract Implem6 {}
