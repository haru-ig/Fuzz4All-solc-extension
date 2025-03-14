pragma solidity ^0.8.0;
contract E {
    uint256 a;
    event E1(uint256 a);
    event E2(uint256 a);
    uint256 constant x = 0;
    uint256 constant y = 1;
    uint constant z = 2;
    constructor(uint _a_) {
        a = _a_;
    }
    function f() public {
        emit E2(a);
        emit E1(a);
        a = a + 2;
    }
    function g() public {
        a = a + 3;
    }
    function h() public {
        if (x == z) {
            a = a + 4;
        } else {
            a = a + 5;
        }
    }
}
pragma solidity >=0.7.0 ^0.8.9;
contract AbiReencodingBug {
    address payable a;
    constructor(address _a_) {
        a = _a_;
    }
    function b() public {
        uint256[] memory z = [1, 2, 3, 4, 5];
        a.transfer(z.length);
    }
    function c() public payable {
        address[] memory z = [1, 2, 3, 4, 5];
        a.transfer(z.length);
    }
}
pragma solidity >=0.7.0 ^0.8.9;
address[]  contractAbiReencodingBugAddresses;
struct Calldata {
    uint256[] payload;

    function calldataSize() public pure returns(uint256) {
        return payload.length;
    }
}
pragma solidity >=0.7.0 ^0.8.9;
interface I {
    string x();
}
pragma solidity >=0.7.0 ^0.8.9;
contract AbiReencodingBug2 is Calldata {
    address payable a;
    constructor(uint16 _code) {
        a.transfer(_code.length);
    }
    function b() public {
        uint256[] memory z = [1, 2, 3, 4, 5];
        a.transfer(z.length);
    }
    function c() public payable {
        address[] memory z = [1, 2, 3, 4, 5];
        a.transfer(
