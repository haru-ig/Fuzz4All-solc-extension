pragma solidity ^0.8.0;
contract ContractWithBiggerFallback {
    bool b;
    receive() external payable {
        b = true;
    }
    function shouldBeFalse() public view {
        assert(b);
    }
}
contract Caller {


    contract Caller {

        constructor() external {
        }

        function test() public {
            ContractWithFallback.fallback();
        }
    }
    function shouldBeEqual(address expected) public {
        require(Caller.test.value(0.3144175)(), "Error");


    }
}
