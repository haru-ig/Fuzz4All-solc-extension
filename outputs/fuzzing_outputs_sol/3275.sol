pragma solidity ^0.8.0;
contract CallWithFallback {
    uint public x = 0;
    function highLevel() public payable returns (uint) {
        fallback();
        x++;
        x += 2;
        return x;
    }
    receive() external payable {}
    function fallback() public payable {}
    function lowLevel() public {
        x--;
        x -= 2;
    }
}
