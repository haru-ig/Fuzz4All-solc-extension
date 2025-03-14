pragma solidity ^0.8.0;
contract CoB{
    CoA obj;
    function f1() external {
        obj.g1(0xFF);
    }
}
address addr = CoB(0x00000000000000000000000000000000000000000).f1;
assembly {
    let result := staticcall(gas(), 0x13a80, addr)
    switch result
    case 0 {
        calldatacopy(0, 0, returndatasize)
        switch returndatasize
        case 0 {
            return
        }
        default {
        revert(addvalue)
        }
    }
    default {
        revert(0, 0)
    }    }
    }
