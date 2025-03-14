pragma solidity ^0.8.0;
address private addrs;
address public mainAcc;
struct AddressStorage {
    address public a;
    address public z;
    address public bz;
}
contract C{
    AddressStorage private addresses;
    uint constant x = 0;
    uint public a;
    uint constant y = 4711;
    uint public x2 = 10000;
    uint private z2 = 1;

    function setMain(address newmain) public {
        mainAcc = newmain;
    }

    function func1(uint _val) public {
        addrs.a;
    }

    function func2(uint _val) public {
        addrs.a += _val;
    }

    function func3() payable public {
        uint _val = y * 2;
        addrs.a += _val;
    }

    function func4() payable public {
        uint _val = x2 * 2;
        addrs.a += _val;
    }

    function func5(uint _val) public returns (uint) {
        for (uint _i = 0; _i < 10000; _i++) {
            x2 += _i * 2;
        }
        return (x2);
    }

    function func6(uint _val) public returns (uint) {
        for (uint _i = 0; _i < 10000; _i++) {
            x2 += _i * 2;
            y += 2;
        }
        return (y);
    }

    function func7() public {
        uint _val = y * 2;
        z2 += _val;
        uint _val2 = x2 * 2;
        addrs.a += _val2;
    }

    function func8() public {
        uint _val = x2 * 2;
        z2 += _val;
        uint _val2 = x2 * 2;
        bz += _val2;
    }

    function func9() public {
        uint _val = x2 * 3;
        bz += _val;
        uint _val2 = x2 * 3;
        z2 += _val2;
    }
}
