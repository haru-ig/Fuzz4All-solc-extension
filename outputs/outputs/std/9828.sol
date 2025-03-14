pragma solidity ^0.8.0;
contract S2
{
    uint[10] public bar;
    uint[10] private baz;
    uint[10] public bak;
}

contract S2
{
    uint[] private bar;
    uint[] public baz;
    uint[] public bak;
    function foo(address b) public {
        bar[0] = 1;
        baz[0] = 1;
        bak[0] = 1;
    }
}

contract S2
{
}

contract S2
{
    uint[] private bar;
    uint[] public baz;
    uint[] public bak;
    modifier isTrue () {
        if (msg.value == 0) throw;
        else _;
    }
    modifier isFalse() {
        if (msg.value!= 0) throw;
        else _;
    }
}

contract S2
{
    uint[] public bar;
    uint[] private baz;
    uint[] public bak;
    event foo(string msg,uint a);
}

contract S2
{
    address public address;
    uint[] private baz;
    uint[] public bak;
    mapping(address => string) public map;
}

contract S2
{
    bool public has_function;
    address[] public _members;
    address[] private _friends;
    address[] public _councils;
    uint public _num_members;
    uint public _num_friends;
    uint public _num_councils;
    function S2() public {
        set(_members);
        set(_friends);
        set(_councils);
    }
    function set(address[] memory _array) public {
        _members = _array;
        _num_members = _array.length;
    }
    function set(address[] memory _array, uint _n) public {
        _num_members = _n;
        _members = new address[](uint(_n));
        for (uint i=0; i < uint(_n); i++) {
            _members[i] = address(_array[i]);
        }
    }
    function set(address[] memory _array_m, address[] memory _array_f, address[] memory _array_c) public {
        _num_members = _array_m.length;
        _num_friends = _array_f.length;
        _num_councils = _array_c.length;
        for (uint i=0; i < uint(_num_members); i++) {
            _friends[i] = address(_array_m[i]);
        }
        for (uint i=0; i < uint(_num_friends); i++) {
            _counc
