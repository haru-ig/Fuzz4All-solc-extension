pragma solidity ^0.8.0;
contract LegacyContractWithFallback
{
    constructor(uint128 amount) payable {
        uint i;
        for(i = 0; i < 2; i++) {
            if (i == 0) {
                uint128 _value = amount;
                fallbackFunction(_value);


                assert(
                    _value == i * 2,
                    "Assertion failed: amount is not the result of the fallback function"
                );


                assert(
                    _value == amount + i,
                    "Assertion failed: amount is not the result of the fallback function"
                );

                continue;
            }

            fallbackFunction(amount);


            assert(
                amount == (i-1)*2,
                "Assertion failed: amount cannot be incremented anymore"
            );


            assert(
                amount == (i-1)*2 + 2,
                "Assertion failed: amount cannot be incremented anymore"
            );
        }
    }
    fallback function(uint128 _value) public {


        storage.amounts.push(_value);
    }
    function fallbackFunction(uint128 _value) public pure {
        selfdestruct(_value);
    }
    struct storage
    {
        mapping(uint => uint128) amounts;
    }
    storage public storage;
}
