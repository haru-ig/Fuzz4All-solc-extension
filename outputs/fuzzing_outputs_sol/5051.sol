pragma solidity ^0.8.0;
contract Caller {
    function run() public {
        require(false);
        Simple storage mySimple = Simple(0xdeadbeefbeefeadd5be6ba634b1866362acce469);
        (bool executed,) = mySimple.functionName();
        require(executed);
    }
}
