pragma solidity ^0.8.0;
contract NotChecked3 {
    constructor() public {
        unchecked {
            bool x = true;
            unchecked {
                x = true;
            }
            address t = msg.sender;
            unchecked {
                x = true;
                while (x) {
                    x = false;
                    selfdestruct(t);
                }
            }
        }
    }
}
