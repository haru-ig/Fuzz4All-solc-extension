pragma solidity ^0.8.0;
contract Equivalent
{
    event SomeEvent(address x);

    function modifiedSendEther(int x, uint y, address t) public payable{
        SomeEvent(t);
    }
}

pragma solidity ^0.8.0;
contract Caller
{
   function callMeAgain() public pure returns(uint){
        return 42;
    }

    function callMeAgainWithReturn() public pure returns(uint){
        return(42);
    }
}

pragma solidity ^0.8.0;
contract Fallback
{

    receive() external payable {
        (uint x) = calldata;
    }
}
