pragma solidity ^0.8.0;
contract Test4_Mutated1{
        uint public a;
        function f() public {
            uint8 _x;
            assembly {    _x := returndatasize()}
            a = 0;
        }
    }
contract Test4_Mutated2{
        uint8 public a;
        function f() public{
            uint8 _x;
            assembly {    _x := returndatasize()}
            a = 0;
        }
    }
pragma experimental ABIEncoderV2;
contract Test_2_mutated2{
        uint public a = 2;
        uint8 public b = 11;
        uint8 public c;
        mapping (uint256 => uint8) public d;
        uint256 _x;
        function f() public {
            d[0] = 0;
            c = 4;
            if (d[0] == 0 && b == 0) {
                uint256 _y;
                assembly {    _y := returndatasize()}
                _x = 0;
                require(_y == 0, "y");
            }
        }
    }

pragma solidity ^0.8.0;
contract Test5_Mutated2{
        uint8 public a = 8;
        uint8 public b = 0;
        uint8 public c;
        uint256 _x;
        function f() public {
            b = 0;
            c = 4;
            if (a!= 0 && b!= 0) {
                uint8 temp;
                uint8 _y;
                assembly {    temp := b}
                b = 0x00;
                assembly {    _y := returndatasize()}
                c = 0x00;
                require(_y == 0, "y");
            }
        }
    }

pragma solidity ^
