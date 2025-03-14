pragma solidity ^0.8.0;
contract EquivalentMutatedDynamicArrays9 {
    uint256[] elements;
    constructor() public {
        elements = new uint256[](10);
    }
    function modify() public {
        elements.length += 1;
    }
}
library MutatedDynamicArraysLibrary {
struct Equivalent {
    struct Test {
        uint256 count;
        uint256[] data;
    }


    mapping (uint256 => Test) mutable tests;
}
function writeTest(uint256 count, uint256[] calldata data) internal returns (Equivalent memory x) {
    Equivalent memory test = Equivalent.Test({


    });
    x.tests[count] = test;
}
function test(uint256 count) public view returns (Equivalent memory) {
    return EquivalentLibrary.writeTest(count, new uint256[](1));
}
}
contract EquivalentMutatedDynamicArraysLibrary {
    uint256[] elements;
    constructor() public {
        elements = new uint256[](10);
    }
    function modify() public {
        EquivalentMemory memory test = EquivalentLibrary.writeTest(elements.length, new uint256[](1));
    }
    function test() public view returns (Equivalent memory) {
        return EquivalentLibrary.writeTest(elements.length + 1, new uint256[](1));
    }
}

contract TestDynamicArray {
    function runTests() public pure returns (uint256 count, uint256[] memory values) {
        uint256 result = 0;
        count = 0;
        values = new uint256[](10);
        for (uint256 i = 0; i < 1000; i++) {

            MutatedDynamicArraysLibrary.Equivalent memory elements = MutatedDynamicArraysLibrary.test(count);
            for (uint256 j = 0; j < 10; j++) {
                values[count] = elements.tests[j].data[i];
                delete elements.tests[j];
            }
            count++;
        }
    }
}
contract TestMutatedDynamicArraysLibrary {
    function runTests() public pure returns (uint256 count, uint25
