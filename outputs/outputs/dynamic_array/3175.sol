pragma solidity ^0.8.0;
contract NestedAssignment {
    struct Data {
        uint x1;
    }
    Data memory data = Data(2);
    function nested() public {
        if (data.x1 == 3) {
            data.x1 = 2;
        }
    }
}
