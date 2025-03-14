pragma solidity ^0.8.0;
contract Returnable {
    uint public x;
    function returner() public pure returns (uint ) {
        return x;
    }
}



pragma solidity ^0.8.0;
contract ReturnCaller {
    uint public x;
    function returnable() public pure returns (Returnable) {
        return Returnable(x);
    }
    function returnCaller() public pure returns (Caller) {
        return Caller();
    }
}
