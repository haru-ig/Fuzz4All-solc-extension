pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutators3 is Mutators2 {
    function test_2 (uint256 _a, uint256 _b) internal {
        assembly {

            let x := add(_a, _b)
            let z := lt(x, 279710)

            sstore(1, x)

            sstore(2, z)
        }

        return 0;
    }
    function test_4 () public {
        return 11;
    }
    function test_3 () public {
        return 11;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutators4 is Mutators2 {
    function test_2 (uint256 _a, uint256 _b) public {
        _a += _b;
    }
    function test_4 () internal {
        return 11;
    }
    function test_3 () public {
        return 11;
    }
}
