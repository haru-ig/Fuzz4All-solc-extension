pragma solidity ^0.8.0;
contract NewMutate {
    function mutateArrayAndReturn(uint32[] memory a) public pure returns(uint32) {
        a[0] -= 1;
        return a[0];
    }
}

pragma solidity ^0.8.0;
library SimpleMutation {
    function mutateAndReturn(uint32[] memory a) public pure returns(uint32) {
        a[0] -= 1;
        a.push(a[0]);
        delete a[1];
        uint32 len = uint32(a.length);
        bool found = true;
        for (uint32 i = 0; i < len; i++) {
            if (a[i] == uint32(i)) {
                found = false;
            }
        }
        return uint32(found);
    }
}
