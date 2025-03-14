pragma solidity ^0.8.0;
contract Test42Original
{
    event test42();

    constructor () public {
        emit test42();
    }

    function test() public {}

    function test42() internal {

    }
}
