pragma solidity ^0.8.0;
contract mutation1
{

    function f1(uint32 a, uint32 b, uint32 c, uint32 d, uint32 e) public pure returns(uint32) { checked { a.a.a.a.a.a.a += unchecked(b) + unchecked(c) + unchecked(d); e.a.a.a.a.a.a.a.a += unchecked(a) + unchecked(e); } return a.a.a.a + unchecked(b) + unchecked(c) + unchecked(d); }}

    function f2(uint32 a, uint32 b, uint32 c, uint32 d, uint32 e) public pure returns(uint32) { unchecked { a.a.a.a.a.a.a.a += unchecked(b) + unchecked(c) + unchecked(d); e.a.a.a.a.a.a.a.a += unchecked(a) + unchecked(e); } a.a.a.a.a.a.a.a += unchecked(b) + unchecked(c) + unchecked(d); return e.a.a.a.a.a.a.a.a();}

    function f3(uint32 a, uint32 b, uint32 c, uint32 d, uint32 e) public pure returns(uint32) { signed {
        a.a.a.a.a.a.a.a += unchecked(b) + unchecked(c) + unchecked(d);
        e.a.a.a.a.a.a.a.a += unchecked(a) + unchecked(e); } return a.a.a.a.a + unchecked(b) + unchecked(c) + unchecked(d);}

    function f4(uint32 a, uint32 b, uint32 c, uint32 d, uint32 e) public pure returns(uint32) { unchecked {
        a.a.a.a.a.a.a.a += unchecked(b) + unchecked(c) + unchecked(d);
        e.a.a.a.a.a.a.a.a += unchecked(a) + unchecked(e);
        a.a.a.a.a.a.a.a.a += unchecked(b) + unchecked(c) + unchecked(d);
        e.a.a.a.a.a.a.a.a += unchecked(a) + unchecked(e);
        a.a.a.a.a.a.a.a.a += unchecked(b) + unchecked(c) + unchecked(d);
        e.a.a
