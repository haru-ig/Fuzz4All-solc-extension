pragma solidity ^0.8.0;
contract Incrementer {
    function increment_internal() pure internal {
        (uint256 count, uint256 value) internal view returns (uint256 result) {
            count += 1;

            result = value + uint128(count);
        }
    }
    function increment() pure internal {
        Incrementer.increment_internal();
    }
}

pragma solidity ^0.8.0;
contract Incrementer {
    function increment_internal() pure internal {
        (uint256 count, uint256 value) internal view returns (uint256 result) {

            result = value - 1;
            count += 1;
        }
    }
    function increment() pure internal {
        Incrementer.increment_internal();
    }
}

pragma solidity ^0.8.0;
contract Incrementer {
    function increment_internal() pure internal {

        uint256 old_value = 2 + 3;

        uint256 count = old_value;

        old_value += 5;

        old_value++;

        count += 1;
    }
    function increment() pure internal {
        Incrementer.increment_internal();
    }
}

pragma solidity ^0.8.0;
contract Incrementer {
    function increment_internal() pure internal {
        uint256 old_value = 2 + 3;
        uint256 count = old_value;
        count += old_value;

        uint256 value = _return_value();

        old_value++;

        count += 1;
    }
    function increment() pure internal {
        Incrementer.increment_internal();
    }

    function _return_value() pure internal {
        return uint16(uint256{value:old_value});
    }
}
