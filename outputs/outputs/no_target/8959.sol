pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v1 {
    IERC20 constant public value22 = IERC20(0xe69F37cb51b225360101a2438645d639E9f91C98);
    IERC20 constant public value23 = IERC20(0xc0dc8d09583462a2e8a0464c5708d36fb1878f3a);
    IERC20 constant public value20 = IERC20(0xb8af54f35621b4c893f5afac83124c8463798805);
    function test (address value21) public {
    }
}
contract EquivalentAbiMutations_v2{
    EquivalentAbiMutations_v0 contract0;
    EquivalentAbiMutations_v1 contract1;
    function test (address value) public {
        if(value == address(contract0)) {
            contract0.test(value);
        } else if(value == address(contract1)) {
            contract1.test(address(contract0));
        } else {
            bytes memory emptyBytes = new bytes(0);
            contract0.test(address(contract1));
            contract1.test(emptyBytes.length > 0);
        }
    }
}
