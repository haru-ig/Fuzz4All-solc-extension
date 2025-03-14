pragma solidity ^0.8.0;
contract mutatedY {
    mutatedX mutated_x;
    function func() public {
        mutated_x.func();
    }
    function func2() public {
        mutated_x.func2();
    }
    function func3() public {
        mutated_x.func3();
    }
    function func4() public {
        mutated_x.func4();
    }
    function func5() public {
        mutated_x.func5();
    }
}
contract Test {
    function test_contract() public {
        mutatedY mutated_y;
        mutated_y.func();
        mutated_y.func2();
        mutated_y.func3();
        mutated_y.func4();
    }
    function test_mutated_contract() public {
        mutatedY mutated_y;
        mutated_y.func5();
        uint256 orig_x;
        orig_x = mutated_y.get_x();
        mutated_y.set_x(orig_x + 1);
    }
}
