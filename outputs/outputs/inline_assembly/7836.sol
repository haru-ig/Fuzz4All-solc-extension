pragma solidity ^0.8.0;
contract L23{
    function returnsFunction(uint a) pure public returns(uint) {
        return a;
    }
    constructor() public {
        deployCalled();
    }
    function deployCalled() public {
        returnsFunction(8);
    }
}
