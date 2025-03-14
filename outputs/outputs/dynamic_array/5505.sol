pragma solidity ^0.8.0;
contract Test64 {
    function Test64() public {
        assign_int32(0, 0);
    }
    function assign_int32(address ptr, int32 i) public {
        delete_int32(ptr, i);
        delete_int32(ptr, 0);
        delete_int32(ptr);
    }
    function delete_int32(address ptr, int32 i) public {
        delete(ptr);
    }
}

pragma solidity ^0.8.0;
contract Test65 {
    int int;
    constructor() public {
        uint _ = 100;
        test();
    }
    function test() public {
        int = 120;
        uint _ = 5;
        int = 100;
        for (uint i = 20; i > 0; i--) {
            uint _ = 5;
        }
    }
}
