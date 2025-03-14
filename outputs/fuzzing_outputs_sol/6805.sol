pragma solidity ^0.8.0;
fallback () public payable {}
contract FallbackStorage {
    uint public balance;
    fallback() public payable {}
    fallback() public payable {}
    fallback() public payable {}
    fallback() public payable {}
}
contract Caller {
    function returnUint() public pure {
        return uint(address(this));
    }
    function returnBytes1() public pure returns (bytes1) {
        return bytes1(address(this));
    }
    function returnBytes32() public pure returns (bytes32) {
        return bytes32(address(this));
    }
    function returnUint64() public pure returns (uint64) {
        return uint64(address(this));
    }
    function call() public pure {
        address o1;
        assembly {
            o1 := calldatacopy(0, 32)
        }
        if (o1 > 2e12) {
            throw;
        } else {
            bytes memory b1 = bytes1(o1);
            assembly {
                o1 := 0
            }
            assert(bytes1(o) == b1);
        }
    }
    function test() public pure {
        bytes1 b;
        assembly {
            b := calldatacopy(0, 2)
        }

        bytes memory b1 = "foo";
        assembly {
            b := add(b, b1)
        }
        assert(b.length == 3);
        assert((uint160)b == uint64(bytes1(b1)));
    }
}
