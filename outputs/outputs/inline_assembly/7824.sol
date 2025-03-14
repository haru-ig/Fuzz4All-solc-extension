pragma solidity ^0.8.0;
contract L3 {
    function func() public {
        address x = address(L15);
        uint res = 100000;
        for (uint i = 0; i < 10; i++) {
            res = res * x;
        }
        assert( res == 100000e20 );
    }
}
