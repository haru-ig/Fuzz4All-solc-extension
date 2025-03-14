pragma solidity ^0.8.0;
contract MutatedDynamicArrays {
    uint256 public x = 1;
    function mutate_x() public {
        x = 2;
    }
    function mutate_x1() public {
        x = 3;
        x = 1;
    }
    function mutate_x3() public {
        x = 5;
        x = 2;
        x = 1;
    }
    function mutate_x5() public {
        x = 5;
    }
    function mutate_x10() public {
        x = 10;
    }
    function mutate_x15() public {
        x = 15;
    }
    function mutate_x20() public {
        x = 20;
    }
}
