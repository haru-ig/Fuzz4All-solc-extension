pragma solidity ^0.8.0;
contract E9
{
    uint _x;
    function subtract_internal1_2 (uint _x_input) internal {
        _x = _x ^  (~ (-3));
    }
}
contract E2
{
    function external_call () external returns (uint x)
    {
        x = _x ^  (~ (-3));
    }
}
contract E3
{
    bool _flag;
    function internal_call () internal
    {
        _flag = _flag ^  (~ (-3));
    }
}
contract E4
{
    bool _flag;
    uint _x;
    function internal_call () internal
    {
        _flag = _flag ^  (~ (-3));
        _x = _x ^  (~ (-3));
    }
}
contract E5
{
    bool _flag;
    uint _x;
    function external_call (uint _input) external view returns (uint)
    {
        _flag = _flag ^  (~ (-3));
        _x = _x ^  (~ (-3));
        return _input;
    }
}
contract E6
{
    bool _flag;
    uint _x;
    function external_call (uint _input) external view returns (uint)
    {
        _x = _x ^  (~ (-3));
        _flag = _flag ^  (~ (-3));
        return _flag;
    }
}
contract E7
{
    uint _flag_inner;

    function internal_call (uint _x)
    {
        _flag_inner = _x ^  (~ (-3));
    }

    function external_call () public returns (uint)
    {
        internal_call(2);
        return _flag_inner;
    }
}
contract E8
{
    uint _flag;

    function internal_call (uint _x)
    {
        _flag = _x ^  (~ (-3));
    }

    function external_call () public returns (uint)
    {
        internal_call(1);
        return _flag;
    }
}

contract E9
{
    uint _flag;

    function internal_call (uint _x)
    {
        _flag = _x ^  (~ (-3));
    }

    function external_call (uint _y) public returns (uint)
    {
        internal_call(1);
        return (1, 2, 3, _x & _y)[_y & 2];
    }
}<fim_middle>contract E10
{
    uint x;
    bool internal_flag;

    function internal_call_1 (uint _x) internal
    {
        internal_flag = _x &
