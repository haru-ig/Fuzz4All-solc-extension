pragma solidity ^0.8.0;
contract EtherEquivCaller {
    address public fallbackToEther;
    address public fallbackToEtherWithReceive;
    address public fallbackWithoutReceive;
    function f() public pure returns (address f) {
        return address(this);
    }
    function run() public {
        fallbackToEther = f();
        fallbackToEtherWithReceive = f();
        fallbackWithoutReceive = f();
    }
}
