pragma solidity ^0.8.0;
contract Mutator1
{

    function payWithFallback(address payable _contract) public payable {}
}
contract Reverter1
{
    constructor (

        address contractAddr
    ) public {

        _contractAddr = address(new Mutator1());
    }
}

pragma solidity ^0.8.0;
contract Mutator1
{
    function payWithFallback(address payable _contract) public payable {}
}
contract Caller1
{
    constructor () public
    {
        contract1 = new Reverter1(address(new Mutator1));
    }

}
