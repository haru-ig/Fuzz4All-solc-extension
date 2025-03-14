pragma solidity ^0.8.0;
contract HigherLevelTest {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    modifier nonZero(uint _value) { assert(_value!= 0); _; }
}

pragma solidity ^0.8.0;
contract EvmTest {
    AdvancedContract contract;
    HigherLevelTest contract_test;
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant AMOUNT = 2**255;

    function update(uint _numerator, uint _denominator) public {
        uint a = _numerator;
        uint b = _denominator;
        uint sum = contract.change(_numerator);

        contract.change(_denominator * _numerator);
        contract.change(_denominator + _numerator);

        contract_test.nonZero(_denominator);
        contract_test.nonZero(_denominator * _numerator);

        sum -= _denominator;

        sum = contract.change(sum);
        sum = contract.change(sum);
        sum = contract.change(sum);
        sum = contract.change(sum);
        sum = contract.change(sum);

        contract_test.nonZero(sum);
    }
}
