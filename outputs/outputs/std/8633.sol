pragma solidity ^0.8.0;
contract MutationEquivalence444
{
    function func(bytes10) public view;
    function func(uint) public view returns (uint8 _v);
    function func(uint8) public view;
    function func(address) public view;
}
contract MutationEquivalence555
{
    mapping (uint => uint) public map;

    uint[] public array;

    staticMapping functionStatic
    public
    view
    returns (mapping(uint => uint))
    {
        return mapping{ mapping(uint => uint) }(map);
    }

    staticMappingView functionStaticView
    public
    view
    returns (mapping(uint => uint) public view)
    {
        return mapping{ mapping(uint => uint} public view (uint => uint));
    }
}
contract MutationEquivalence666
{

    mapping(uint => uint) public map;
    uint256 public constant constant = 2;

    struct Struct
    {
        uint value;
    }

    mapping(uint => Struct) public structs;

    bytes10[] public stringSlices;

    bytes10[] public stringSlices2;

    mapping(bytes10 => uint) public num;
}
