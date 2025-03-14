pragma solidity ^0.8.0;

contract test31;


contract test32
{
    struct Person {

        bytes32 id;
        address addr;
    }
    function test() public pure
    {
        (bool b, uint a) = (true, 1);
        Person storage person = Person({id :keccak256("Test"), addr :address(this)});
    }
}

contract test33;

contract test34 is test31, test32
{
    function test() public pure
    {
        (bool b, uint a) = (true, 1);
        Person storage person = Person({id :keccak256("Test"), addr :address(this)});
    }
}

contract test35;
pragma solidity ^0.8.0;

contract test36
{
    uint numAccounts = 0;
    string[] accounts;

    function () receive {
    }

    function deposit() public payable
    {
        accounts[numAccounts++] = msg.sender;
    }

    function withdraw(address _addr) public
    {
        require(msg.sender == _addr);
        uint i=0;
        while (accounts[i]!= address(0)) {
            i++;
        }
        i--;
        accounts[i] = accounts[i + 1];
        accounts.pop();
        require(numAccounts == i + 1);
    }
}

contract test37;

contract test38 is test31
{
    constructor(string[] memory _names) {
        for (uint i = 0; _names.length > i; i++)
        {
            accounts.push(_names[i]);
        }
    }
}

contract test39;

contract test40 is test31
{
    address public owner;
    uint public count = 0;
    constructor() public {
        owner = msg.sender;
    }

    function () payable public
    {
        require(msg.value > 0);
        count++;
        emit log(msg.sender, 1, "Test");
        require(msg.value > 0);
    }

    event log(address _from, uint _value, string _data);
}

contract test41;

contract test42 is test31
{
    event log(address _from, uint _value, string _data);
    function log(bool _value) public { emit log(msg.sender, 1, _value); }
}

contract test43;

contract test44
