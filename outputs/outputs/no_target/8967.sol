pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v2 {
    uint160 constant public value2 = 203;
    uint32 constant public value3 = 208;
    uint256 constant public value0 = 200;
    function test() public {
    }
    function test(address value3) public {
    }
}
contract EquivalentAbiMutations_v2 {
    uint256 constant public value = 1800;
    function test() public {
    }
    function test1() public {
    }
    function test2(uint160 value) public {
    }
    function test3(uint256 value) public {
    }
    function test4(uint256 value, uint32 value1) public {
    }
}
