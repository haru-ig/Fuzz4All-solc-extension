pragma solidity ^0.8.0;
contract ComplexMutation8 {
    function caller(uint256 arg) public pure returns (bool) {
        return true;
    }
}
contract Base {



    function caller(uint256 arg) public pure returns (bool) {
        return false;
    }
}
contract BaseWithFallback {
    function caller(uint256 arg) public pure returns (bool) {
        return false;
    }
    function fallback() public pure {

        receiveEthereum(msg.data);
    }
}
contract Caller is Base
{








    constructor (address _fallback)
    {





        fallback();

    }
}
contract CallerWithFallback is BaseWithFallback
{
