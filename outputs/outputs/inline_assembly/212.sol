pragma solidity ^0.8.0;
contract E7H2
{
    mapping(address => uint) private internal_counter;
    uint public counter = 123;
    constructor(uint _x) public {
        counter = _x;
        internal_counter[msg.sender] = counter;
    }
}

pragma solidity ^0.8.0;
contract E7H2
{
    mapping(address => uint) public _internal_counter;
    mapping(address => uint) private internal_counter;
    uint public counter = 123;
    constructor(uint _x) public {
        counter = _x;
        internal_counter = _internal_counter;
        internal_counter[msg.sender] = counter;
    }
    function add(uint _x) public returns (bool) {
        uint t = _x + _internal_counter[msg.sender];
        _internal_counter[msg.sender] = t;
        return true;
    }
}
contract E11
{

}
contract E12
{
    event Log(address _from,address _to,bytes32 _data,uint _value);
    uint public counter = 123;
    constructor(uint _x) public {
        counter = _x;
    }
    function getAccount(address _x) public view returns (bytes32)
    {
        return counter;
    }
    function _transfer(address _from,address _to,uint _value) public {
        _internal_transfer(msg.sender,_to,_value);
    }
    function _internal_transfer(address _from, address _to, uint _value) internal {
        Log(msg.sender,_to,keccak256(abi.encodePacked(_from,_value)),_value);
    }
}
contract E13
{
    struct Message
    {
        uint value;
        bytes32 data;
    }
    constructor(uint _x) public {
        counter = _x;
    }
    function _internal_transfer(Message memory _message) internal {
        Log(_message.value,msg.sender,_message.data,_message.value);
    }
    function _transfer(address _from,address _to,bool _ok) internal {
        _internal_transfer(Message(counter,_ok));
    }
}
/* Please create a mutated program which has a third contract instance which also modifies an internal counter to perform transfers
