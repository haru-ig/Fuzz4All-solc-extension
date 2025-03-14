pragma solidity ^0.8.0;
contract MutatedDynamicArrays2 {
    uint224[] memory dynarray = new uint224[](23);
    uint256 public x = 1;
    function mutate1() public {
        x = 2;
    }
    function mutate2() public {
       uint256 x1;
       dynarray[1] = 1;
       dynarray[x1] = 0;
    }

    function mutate3() public {
        assembly {
            nop
        }
    }
}

pragma solidity ^0.8.0;
contract MutatedDynamicArrays3 {
    uint256 public x = 1;
    function mutate(uint256 _y) public {
        x = _y;
    }
}
