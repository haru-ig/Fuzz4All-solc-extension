pragma solidity ^0.8.0;
contract Test17_semanticsSame{
        bool public a;
        uint8[5] p;
        function f() public returns(uint256) {
            p[0] = 1;
            uint x;
            if (a) {
                x = p[0];
            }
            return x;
        }
    }


pragma experimental ABIEncoderV2;
contract Test3_2{
        function f() external{
            uint8 _x;
            assembly {    _x := returndatasize()}
            require(_x == 1, "x");
        }





    }
contract Test3_3{
        function f() public returns(uint8){
            uint8 _x;
            assembly {    _x := returndatasize()}
            return _x;
        }
    }
