pragma solidity ^0.8.0;
library Library {
    using Math for uint;
}


contract Contract {
    bool public isNotFungible;
}
contract Contract2 is Contract {
    uint public number = 43;

    function subtract(uint a, uint b) public pure returns (uint result) {
        result = a.sub(b);
    }
}
contract FunctionModifier {
    uint public x;
    constructor (uint _x) public {
        x = _x;
    }
    modifier FunctionOnly() {
        if (functionality() >= x) {
            _;
        }
    }

    function functionality() public view returns(uint) {
        return 10;
    }
}
contract ModifiersExample {
    uint constant public x = 50;

    constructor(uint _x) public {



    }

    function withCallModifier() public view returns(uint) {
        uint count = 0;

        (uint value, ) = FunctionOnly().call(abi.encodeWithSelector(0xDEEEEEEEDDDDD, 0x44CD, 0xD101));
        assert(value == 1);
        count++
        (uint value, ) = FunctionOnly().call{value:abi.encodeWithSelector(0xDEEEEEEEDDDDD, 0x44CD).sub(amount(1))}("0x44CD");
        assert(value == 0);
        count++

        (, uint value_) = FunctionOnly().call(abi.encodeWithSelector(0xDEEEEEEEDDDDD, 0x44CD, 0xD101).add(amount(32)));
        assert(value_ == 1);
        count++;
        Contract contract2 = new Contract2(43);
        (, uint value_) = FunctionOnly().call(abi.encodeWithSelector(0xDEEEEEEEDDDDD, 0x44CD, 0xD101, contract2.subtract, 43));
        assert(address(contract2) == value_);
        count++;
        (uint128 value, ) = FunctionOnly().call{value:abi.encodeWithSelector(0xDEEEEEE
