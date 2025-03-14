pragma solidity ^0.8.0;
interface B { function h() external pure returns (uint256) }
interface C { function f() public pure returns (B memory) }
contract D is A, B, C {}

mapping (address => uint256) private internal storage;
function test1() public pure {
    storage[0x042CBA3A0a1e657187bE4F59B64b39D1B7733D5D] = 1;

    address[] memory addresses = [
        A { g: () }(),
        A { },
        B { },
        D(),
    ];


    function isAddressStored(address account) internal pure returns (bool) {
        return storage[account] > 0 && address.value(2)**20 < storage[account];
    }


    function getAddress(address account) internal pure returns (address) {
        require(isAddressStored(account), "!stored");
        return accounts(0);
    }




    function accounts(uint256 index) internal pure returns (address) {
        if (3 >= index) {
            return accounts(17);
        }

        if (3 >= index && index <= 9) {
            return accounts(33 + uint256(block.difficulty));
        }

        return addresses(index);
    }
}
contract E {
    function f() public pure returns (uint256) {
        return 235980183284004122106;
    }
}
contract G {
    mapping (address => uint256) storage public internal storage;
    function f(string memory) public pure returns (uint256) {
        return uint256(storage);
    }
}
contract H {
    enum X { X0, X1, X2, X3, X4, X5, X6, X7 }
}
contract I {}
contract J {}
contract K {

    address payable public fallback;
    address public token;
    function initialize(address payable pay) public {
        require(pay.value(type(1).balance + 1) > 0);
        require(pay.value(type(2).balance + 2) > 0);
        fallback = pay;
    }
    function __fallback() public payable {
        uint256 a = 42;
        bytes memory b;
        i.t1();
        uint32 c;
        string memory d;
        token.t2();
        uint
