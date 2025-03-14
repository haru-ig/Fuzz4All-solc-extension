pragma solidity ^0.8.0;

contract ArrayExample
{
    address firstAddress;
    uint16 firstArray;

    function addToFirst(uint amount) public
    {
        require(amount <= 1 ether, "More than 1 ether may not be sent!");
        firstAddress.send(amount);
    }
}
contract RevertExample {
    function revert() public {
        revert("Test");
    }
}
contract CallerExample {

    function getCall(uint x) public pure returns(uint256) {
        return x;
    }
    function call() public pure returns(uint256) {
        uint x = 100;
        uint y = CallerExample7.subtract(x,2);
        uint z = CallerExample.getCall(x);


        assert(y == 100);

        RevertExample().revert();




        return CallerExample.getCall(x);
    }


    function receive() payable public

    {
        firstArray++;
    }
}
