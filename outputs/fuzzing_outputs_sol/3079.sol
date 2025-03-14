pragma solidity ^0.8.0;
contract Example9 {
    struct Example9S {
        uint8 c;
    }
}

  2. fallback()
 */
pragma solidity ^0.8.0;
contract Example4 {
    uint b;
    function Example4(uint32 a) {
        a = a;
        b = 0;
        require(msg.value < a - 1, "Amount must be greater than a.");
    }
    function Example4(uint32 a, uint4 b) {
        a = a;
        b = b;
    }
    receive() external payable {}
    receive() external { b = 2 ** 256; }
    receive() external { b = 999; }
    receive() external payable { b = 1000; }
    receive() external { b = 2**128; }
    fallback() external payable {}
}
contract Example5 {
    function Example5(uint x, uint y) {
        require(x > 0 && y > x, "Input error");
    }
    receive() external payable { revert(); }
    receive() external { y = 10000; }
    receive() external { x = 0; }
    receive() external { revert(""); }
    receive() external payable { revert(1234); }
    receive() external payable { revert(8888); }
}
contract Example6 {
    uint256 x;
    uint42 y;
    function Example6(uint256 x_, uint42 y_) {
        x = x_;
        y = y_;
        require(x > 0 && y > x, "Input error.");
    }
    receive() external payable { revert(); }
    receive() external { y = 999999; }
    receive() external { x = 0; }
    receive() external { revert(1234); }
    receive() external payable { revert(""); }
    receive() external payable { revert(5555); }
}
address payable Tester;
function main() public {
    Example10 memory test10;
    Example10 memory test11;
    Example10 memory test16;
    Example10 memory test15;
    Example10 memory test17;
    Example10 memory test13;
    Example10 memory test12;
    Example10S memory test8;
    Example10S memory test9;
    Example9 memory test7;
    Example9 memory test5;
    Example5 memory test4;
    Example5 memory test3;
    Example6 memory test2;
    Example6 memory test1;
    address test = address(test11);
    Tester = payable(address(test16));
    Tester.transfer(0.01 ether);
    address test1 = address(test10);
    uint8 a =
