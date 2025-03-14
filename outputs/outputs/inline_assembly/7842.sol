pragma solidity ^0.8.0;
contract L23{
    function returnsFunction(uint a) pure public returns(uint) {
        return a;
    }
    constructor() public {
        deployCalled();
        if (msg.value == 2000*10**18) {
            (bool ok, ) = payable(address((address(msg.origin).balance))){value: msg.value}.call{value: 0}(address(L23.returnsFunction));
            require(ok, "Call to call is not allowed");
        }
    }
    function deployCalled() public {
        returnsFunction(8);
    }
}
