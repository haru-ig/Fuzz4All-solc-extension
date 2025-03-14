pragma solidity ^0.8.0;
contract Mutators_v08 {
    uint160 public value_v06;
    uint32 public value_v07;
    uint256 public value_v08;
    function equivalent() public {
    }
}
contract Immutables {
    uint256 public value;
    fallback () {
        value = 0;
    }
}
contract Mutually_exclusive_calls {
    address owner;
    uint public constant test_timeout = 2500;
    function Mutually_exclusive_calls() public {
        require(true, "Ownership must be set at deployment.");
    }
    function setOwner(address o) public {
        owner = o;
        assert(o == owner);
    }
    function() external {
        uint numCalls = test_timeout;
        uint curIndex = 0;
        while (true) {
            Mutually_exclusive_calls_Test testX = Mutually_exclusive_calls_Test(curIndex);
            testX.run();
            require (testX.result == curIndex);
            if (curIndex == numCalls) break;
            curIndex += 1;
        }
    }
    struct Mutually_exclusive_calls_Test {
        uint result;
        function mutually_exclusive_call1() public {
            bytes memory bytes = new bytes(0);
            uint result_uint = 9;
            (bytes, result_uint) = Mutually_exclusive_calls_Test.mutually_exclusive_call(bytes);
            result = bytes.length;
            assert (result == 40320);
            Mutually_exclusive_calls_Test_other_code();
        }
        function mutually_exclusive_call2() public {
            uint[] memory uints = new uint[](0);
            uint result_uint = 9;
            (uints, result_uint) = Mutually_exclusive_calls_Test.mutually_exclusive_call(uints);
            result = uints.length;
            assert (result == 40320);
            Mutually_exclusive_calls_Test_other_code();
        }
        function mutually_exclusive_call3() public {
            uint[] memory uints = new uint[](0);
            (uints, ) = Mutually_exclusive_calls_Test.mutually_exclusive_call(uints);
            result = uints.length;
            assert (result == 40320);
            Mutually_exclusive_calls_Test_other_code();
        }
