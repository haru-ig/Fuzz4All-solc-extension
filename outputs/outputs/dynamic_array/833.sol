pragma solidity ^0.8.0;
contract Example {
    function x() public pure returns (uint) {
        uint x;
        uint old_storage_limit = gasleft();
        for(x=0; x < 100; x++) {
            uint storage_limit = gasleft();
            uint storage_left = 1;
            for(uint i=0; i < buffer.length; i++) {
                storage_left *= buffer[i];
            }
            x *= storage_left;
            uint new_storage_limit = gasleft();
            if (new_storage_limit > old_storage_limit) {
                revert();
            }
            if(new_storage_limit!= new_storage_limit) {
                revert();
            }
        }
        return x;
    }
}
