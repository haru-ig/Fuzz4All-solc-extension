pragma solidity ^0.8.0;
contract CallerExample9 {
    uint256 constant FACTOR = 100;
    uint256 public constant ETHER = 1 ETHER;

    function fallback() external payable {}

    function subtract(uint x, uint y) public pure returns (uint) {
        return x == 0? y / FACTOR : x - y / FACTOR;
    }

    function fallbackExample1() public payable {

        require(msg.value == ETHER);
    }

    function fallbackExample2() public payable {
        uint x = subtract(msg.value/FACTOR, 1);

        assert(x == 90);
    }

    uint constant F_VALUE = 42;

    function fallbackExample3() public payable {
        (address walletAddress, uint x) = address(this).call{
            value: F_VALUE,
            gas: 200000
        }("");

        assert(x);
    }
}
