pragma solidity ^0.8.0;
contract MutateSimple {
    constructor() public {
        x = INITIAL_X + 1;
    }
    modifier doStuff(uint z) {
        x = 5;
        return super.doStuff(z + 1);
    }
}

pragma solidity ^0.8.0;

contract UntouchedCode {
    function untouchedFunction() public {
        foo();
        emit Log();
        assert(false);
    }
    event Log();

    function foo() public {
    }
}
contract Test1 {
    function test() public {
        UntouchedCode(uint(address(new Simple())));
    }
}
contract Test2 {
    function test() public {
        UntouchedCode(uint(address(new MutateSimple())));
    }
}
contract Test3 {
    function test() public {
        assembly {
            calldatacopy(0, returndatasize(), 0, calldatasize())
            revert(add(32,returndatasize()))
            return(add(32,returndatasize()))
        }
    }
}
contract Test4 {
    function test() public {
        UntouchedCode.untouchedFunction();
    }
}
contract Test5 {
    function test() external {
        UntouchedCode.untouchedFunction();
    }
}
contract Test6 {
    function test() public {
        UntouchedCode(uint(address(new UntouchedCode())));
    }
}
