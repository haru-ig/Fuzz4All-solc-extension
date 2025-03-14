pragma solidity ^0.8.0;
contract MyContract {
    uint public myconst;
    modifier add(uint m) {
        require(myconst + m <= 32, "ERROR: myconst + m is greater than 32");
        _;
    }
    constructor() {
        myconst = 1;
        assembly {
            mstore(0xe020, 19)
        }
        add(1);
    }
}
