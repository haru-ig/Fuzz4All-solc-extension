pragma solidity ^0.8.0;
contract TestMutator4 {
    address public foo;
    bool public result;
    uint256 public x;
    uint256 public y;

    constructor () public {
        foo = 0xdeadbeef;
        x = 3;
    }

    function mutator01(uint256 x_, bytes32 f_) public {
        x = x_;
    }

    function mutator02(uint256 y_) public {
        y = y_;
    }

    function mutator03() public {
        set();
    }

    function mutator04() public returns (address) {
        bar();
    }

    function mutator05(bytes32) public {
        set();
    }

    function mutator06() public view returns (uint256) {
        return x + y;
    }

    function mutator07() public returns (uint256[] memory) {
        return new uint256[](2);
    }

    function mutator08() public returns (uint256[] memory) {
        return new uint256[](3);
    }

    function mutator09() public returns (address) {
        return foo;
    }

    function mutator10(bytes memory a) public returns(bytes memory r) {
        r = bytes(a);
    }

    function mutator11(bytes memory a, bytes memory b) public returns(bytes memory r) {
        r = bytes(a) + bytes(b);
    }

    function mutator12(uint256[] memory a) public returns (uint256[] memory r) {
        r = new uint256[](a.length);
    }

    function mutator13(address[] memory a) public returns (address[] memory r) {
        r = new address[](a.length);
    }

    function mutator14(bytes32[] memory a) public returns (bytes32[] memory r) {
        r = new bytes32[](a.length);
    }

    function mutator15(uint256[] memory a) public returns (uint256[] memory r) {
        r = new uint256[](a.length);
    }

    function mutator16() public {
        set(x + y);
    }

    function mutator17(uint256) public returns (uint256) {
        return 4 * 5;
    }

    function mutator18(bytes32) public returns (bytes32) {
        return 4 * 5;
    }

    function mutator19() public view returns (uint256) {
        return x + y;
    }

    function mutator20
