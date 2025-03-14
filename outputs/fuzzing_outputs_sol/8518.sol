pragma solidity ^0.8.0;
interface CallerExample7 {
    function subtract(uint x, uint y ) ;
}
contract CallerExample9 {
    function callExample7();

    function subtract(uint x, uint y) public pure returns (uint z) {
        return subtract(y, x);
    }

    receive() external payable {
        callExample7();
    }
    function callExample7() public {
        CallerExample7 myCallerExample7 = CallerExample7(msg.sender);
        _;
    }
}
contract CallerExample11 {

    constructor() {
    }
}
contract CallerExample {
    function subtract(uint x, uint y) public pure returns (uint z) {
        return subtract(x, y);
    }

}
