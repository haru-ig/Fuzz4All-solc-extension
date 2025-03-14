pragma solidity ^0.8.0;
contract S5 {
    uint private data;
    modifier mod {
        bytes1 value = 0;
        assembly {
            mstore(0, 32)
        }
        return mod;
    }
    function () external mod {}
}
