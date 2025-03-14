pragma solidity ^0.8.0;
contract Test3 {
        uint8 public x[6];
        uint8[5] public l;
        uint8[5] public l_new;

        function m() public {
            uint256 _i_x;
            assembly {
                 _i_x := mload(sub(0x40, 0xc8))
            }
            uint256 _i_l;
            assembly {
                 _i_l := mload(0x40)
            }
            x[5] = 255;
            l[_i_x] = 255;
            l_new = l;
        }
    }
contract Test15_semanticsDifferent{
        uint8 public x;
   function f() public returns(uint256) {
            uint256 _x;
            assembly {
                _x := returndatasize()
            }
            x = 127;
            return _x;
        }
    }
pragma experimental ABIEncoderV2;
contract Test4 {
        uint8 public x;
   function f() public returns(uint256) {
            uint256 _x;
            assembly {
                _x := returndatasize()
            }
            x = 0;
            return _x;
        }
    }
#
