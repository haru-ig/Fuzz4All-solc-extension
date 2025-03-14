pragma solidity ^0.8.0;
contract SemanticMutation13
{
    uint16 private constant value = 4;
    constructor()
        public
    {

    }
}
contract SemanticMutation14
{
    struct Storage
    {
        Storage(uint val) public
        {
            val = val + 100;
        }

        uint val;
    }

    function a() public pure {
        Storage storage _storage = Storage(200);
        uint val = _storage.val;

        val = _storage;
    }
}
contract SemanticMutation15
{


    uint internal value = 1;

    constructor(uint _value) public
    {
        value = _value;
    }

    function b() public pure {
        uint16 _value = value;
        value = 4;
        require(value == 4, "b()");
    }

    function c() public pure {
        uint16 _value = value;
        uint16 _result = _value + 1;
        value = _value;
        require(_result == 6, "c()");
    }
}
contract SemanticMutation16
{
    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 indexed _value
    );
    uint public value;
    constructor() public
    {
        emit Transfer(
            address(0),
            msg.sender,
            msg.value
        );
    }

    function a() public pure
    {
        emit Transfer(
            msg.sender,
            address(0),
            msg.value
        );
    }
}
