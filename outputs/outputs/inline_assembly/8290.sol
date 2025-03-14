pragma solidity ^0.8.0;

contract InlineAssembly9 {
    function test() public view returns(string memory) {
        string memory s = "1";
        assembly {
        mstore(0x12, add(s,0x18))
        mstore(0x20, s)
        s := mload(0x20)
        s := mload(0x18)
        }
        return s;
    }
}

pragma solidity ^0.8.0;

contract InlineAssembly10 {
    function test() public view returns(uint) {
        uint x = 65881;
        bool b = true;
        uint y = 1;
        while (y < x) {
            y *= 10;
        }
        uint z = 1;
        while (z < y) {
            z *= 10;
        }
        return (z + 817223) / 10;
    }
}
contract InlineAssembly11 {
    function test() public {
        uint x = 65881;
        bool b = true;
        uint y = 1;
        while (y < x) {
            y *= 10;
        }
        uint z = 1;
        while (z < y) {
            z *= 10;
        }
        assembly {
        x := 0
        b := 0
        y := 0
        z := 0
        a := 4
        b := 1
        }
    }
}
