pragma solidity ^0.8.0;
contract Mutator {
        address public A;
        address public B;
        address public C;
        mapping(address => bool) public flag;

        function d() public pure {
                flag[C] = true;
                flag[B] = false;
                flag[A] = false;
        }

        function c(uint _x) public pure {
            if (flag[A]) {
                assembly {
                    flag[A] := false
                    _x := _mul(_x, 2)
                }
            }
            else {
                assembly {
                    if flag[B] {
                        flag[B] := false
                        flag[A] := true
                        _x := _sub(_x, 1)
                    }
                    else {
                        flag[A] := true
                    }
                }
            }
        }
}
