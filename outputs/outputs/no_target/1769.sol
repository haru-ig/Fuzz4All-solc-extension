pragma solidity ^0.8.0;
contract Mutate3
{
mapping (address payable => uint) _mapping1;
mapping (address payable => uint) _mapping2;

constructor ()
{
    uint a = 1;
    uint b = a + 2;
    uint c = b + 3;
    uint d = c + 4;
    uint e = d + 5;


    _newMapping3();


    _newMapping3();


    _newMapping3();


    _newMapping3();


    _newMapping3();


    _newMapping3();


}

function _newMapping3() public returns (uint)
{


    _deleteMapping3();
    if (_mapping1[0] == 0)
    {
        _mapping1[0] = 1u;
    }
    else
    {
        _mapping1[1] = 1u;
    }
    return _mapping1[1];
}

function _deleteMapping3() public returns (uint) {
    if (_mapping1[1] == 0)
    {

        _newMapping3();
    }
    else
    {

        _mapping2[0x00] = 2u;
    }
    return _mapping1[1];
}

function () public payable
{

}

}







pragma solidity ^0.8.0;
contract Mutate5
{
    struct Test
    {
        /*
        A 40-byte struct is automatically created by the compiler if it is a member variable 128 bytes or more in size.
        The compiler can infer the contents of the struct automatically, or it can ask you to specify the struct manually.
        The compiler also supports the creation of structs in the way you need through the "struct" keyword
