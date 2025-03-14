pragma solidity ^0.8.0;
contract Demonstrate{
    uint constant test = 100;
    uint test2 = 1234;
    address payable constant  contractAddress = payable(msg.sender);

    function main() public pure returns (uint) {
        uint r;
        r = 1;
        r += 1;
        assembly {
            let s := 0
            s := s + s + s
        }
        return r;
    }

    function main01() public pure returns (uint) {
        uint r;

        r ^= 2 * 3;
        if(
            r % 2 == 0
        ) {
            r += 100;
        }
        return r;
    }

    function divTest(uint x, uint y) public pure returns (uint) {
        uint r;
        r = test;
        if(
            x == 1
        ) {
            r = 2;
        }
        r = y / x;
        return r;
    }

    function divide2(uint p) public pure returns (uint) {
        uint r;
        r = p;
        r = 10 / 5;
    }
}
