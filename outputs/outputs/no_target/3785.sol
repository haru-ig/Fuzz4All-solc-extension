pragma solidity ^0.8.0;
contract E7 {
        uint256 a;
        uint256 c;
        function m() public {
                a = 0;
                c = 34359738368;
        }
        function n() public {
                c = 34359738369;
        }
        function o() public {
                c = -34359738370;
        }
        function p() public {
                c = 16#fff;
        }
        function q() public {
                c = 16#10000;
        }
        function r() public {
                c = 16#1fffffffffffffffffffffffffffffff;
        }
        function s() public {
                c = 16#1234567890abcdefabcdefabcdefabcdefabcdefabcdefabcdef;
        }
        function t() public {
                c = 16#f000000000000000000000000000000;
        }
        function u() public {
                c = -1234567890abcdefabcdefabcdefabcdefabcdefabcdef0;
        }
        function v() public {
                c = 18446744073709551616;
        }
        function w() public {
                c = -18446744073709551617;
        }
}
pragma solidity ^0.8.0;
contract E8 {
        uint256 a;
        uint2
