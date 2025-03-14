pragma solidity ^0.8.0;
contract Test68 {
    uint8 i;
    address addr;
    function x() public { i++; addr = address(this);  }
    function y() public { i++; addr = address(this); }
    function z() public { i++; addr = address(this); }
    function w() public { i++; addr = address(this); }
    function v() public { if (i == 3) x(); }
    function u() public { if (i == 3) y(); }
    function t() public { if (i == 3) z(); }
    function s() public { if (i == 4) w(); }
    function r() public { if (i == 4) v(); }
    function q() public { if (i == 4) u(); }
    function p() public { if (i == 4) t(); }
    function o() public { if (i == 4) s(); }
}
