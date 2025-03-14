pragma solidity ^0.8.0;
contract Checked {
    function method() internal pure {
        checked {
        }
    }
}


contract Test {
    function shouldBeReverted() internal pure {
        unchecked {
            (int a) = (-1) / unchecked(uint(-1));
            (int a) += (-1);
        }
    }

    function shouldPass() internal pure {
        checked {
            (uint a) = 1 / unchecked(uint(1));
            unchecked {
                unchecked {
                    a +=  -1;
                }
            }
        }
    }

    function shouldBeReverted2() internal pure {
        unchecked {
            (uint a) = _x / unchecked(_x);
            (int a) = _x / 0;
        }
    }
}
