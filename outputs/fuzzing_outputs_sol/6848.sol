pragma solidity ^0.8.0;
contract Caller {
    address private contract_addr;
    uint private fallback_counter;
    uint128 private fallback_counter14;
    uint storage_counter;
    uint48 constant min_fallback_function_size = 60000;

    event Transaction(address addr, uint value);
    event Transaction_LowLevel(address recipient, uint return_value);

    function __callback_fallback(
        address _destination,
        uint256 _value,
        bytes memory
    ) internal {

        require(address(this).balance >= (_value + min_fallback_function_size));

        if (msg.value >= min_fallback_function_size) {
            fallback_counter += _value;
        } else {
            fallback_counter14 += (uint256(min_fallback_function_size).mul(_value + 1)) / 2;
        }

        contract_addr = _destination;
        value = _value;
        fallback_counter2 = fallback_counter;
        fallback_counter3 = _value;

        revert();
    }
}
