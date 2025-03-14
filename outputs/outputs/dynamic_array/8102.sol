pragma solidity ^0.8.0;
contract Mutator {
    IFabric public fabric;
    constructor(address _fabric) {
        fabric = IFabric(_fabric);
    }
    function modify() public {
        fabric.appendBytes();
        if (fabric.toAdd!= address(0x77DA371F1b2F5775450894B49a8C1133f62F387C)) {
            assembly { mstore(0x40, fabric) }
        }
        fabric.appendBytes2(toAdd());
        fabric.appendBytes3(toAdd());
        if (fabric.toAdd!= address(0x77DA371F1b2F5775450894B49a8C1133F62F387C)) {
            assembly { mstore(0x40, fabric) }
        }
    }
    function toAdd() internal view returns(address) {
        return address(0x77DA371F1b2F5775450894B49a8C1133f62F387C);
    }
}
