pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample28 {
    uint[] memory public v;
    function callAddress(uint a) public {
        v[a] = address(uint(address(this)));
    }
    function increaseBy100(uint b) public {
        v.push(0x12345678);
        v[0] += 100;
    }
    function increaseBy500(uint a) public {
        v[a] = address(uint(address(this)));
        v.push(0x12345678);
        v[0] += 500;
    }
    function increaseBy5000(uint j) public {
        v.push(0x12345678);
        v[0] += 5000;
        v.push(0x12345678);
        v[0] += 5000;
    }
    function increaseBy25(uint c) public {
        v.push(0x12345678);
        v[0] += 25;
        v.push(0x12345678);
        v[0] += 25;
        v.push(0x12345678);
        v[0] += 25;
    }
}

/*pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract A {
    function A(uint i) public {
        uint[] memory a = new uint[](1);
        a[0] = i;
        a[1] = 0x1234567890abdefg0abc876987654321;
        a[2] = 0x01234567890abdefg0abc876987654321;
    }
    function b(uint i) public {
        i += 100;
    }
    function
