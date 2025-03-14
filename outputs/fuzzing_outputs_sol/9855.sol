pragma solidity ^0.8.0;
interface Mutate
{
    function modify(uint x);
}
contract Mutated is Mutate
{
    uint public i;
}

pragma solidity ^0.8.0;
contract Caller
{
    function call(uint x) public {
        Mutated m;

        m.modify(x);
        m.modify(x);
        m.modify(x);
        emit token(x);
        m.modify(x);
        m.modify(x);
        m.modify(x);
    }

    receive() external payable {
        emit token(msg.value);
    }

    event token(uint x);
}
