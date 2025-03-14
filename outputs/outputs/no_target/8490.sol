pragma solidity ^0.8.0;
contract Mutated1 {
    uint256 private a;
    uint256[] private b;
    bool private c;
    uint public d;
    uint[8] public e;
    uint public f;
    uint private g;
    uint private h;
    uint public i;
    uint public j;
    constructor (
        uint256 _value1,
        uint256[] memory _value2,
        bool _value3,
        uint _value4
    ) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3;
        d = _value4 + 16;
    }
    function set (
        uint256 a,
        uint256[] memory b,
        bool c,
        uint d
    ) public {
        a = a + 16;
        b = b;
        c = c;
        d = d + 16;
    }
    }
contract G2 {
    uint256 private a;
    uint256[] private b;
    bool private c;
    bool private d;
    uint private e;
    uint public f;
    uint private g;
    uint public h;
    uint public i;
    uint public j;
    uint private k;
    uint private l;
    uint[8] public m;
    uint256 private n;
    uint256[] private o;
    uint256 private p;
    uint256 private q;
    uint256 private r;
    uint256 private s;
    uint256 private t;
    uint256 private u;
    uint256 private v;
    uint256 private w;
    uint256 private x;
    constructor (
        bool a,
        uint256 _value2,
        uint256[] memory _value3
    ) public {
        a = a;
        b =
