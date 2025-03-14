pragma solidity ^0.8.0;
contract SemanticsEquivalence10 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data1;
    Data internal nonpayable data2;
    function run() public payable {
        data1.x1 = 42;
        data1.x2 = memorySize();
        data1.x3 = 12 * 3;
        data1.x1 = data1.x3;
        data1.x1 = data1.x2;
        data2.x1 = 1;
    }

    function memorySize() public pure returns (uint) {
        uint[] memory numbers = new uint[](6);
        return numbers.length;
    }
}


pragma solidity ^0.8.0;
contract Caller {
    function callContracts(uint i)
        public pure
        returns (uint)
    {
        return Caller2A(bytes4(uint8(i))), 0).fallbackAcontract(i);
    }
}
contract Caller2A {
    function fallbackAcontract(uint i) public pure returns (uint) {
        if (i == 0) {
            throw new;
        } else {
            return 1;
        }
    }
}
