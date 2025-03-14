pragma solidity ^0.8.0;
contract Test090009 {
    uint256 n1;
    uint256[] a;
    constructor () public {
        a = [n1];
    }
    fallback () external {
    }
    constructor () public {
        n1++; a.push(n1);
    }
    constructor () public {
        n1++;
    }
    function test() public {
        assembly {
            let a := mload(0x40)
            a := a + 43
            a := a + 43
            a := a + 43
            a := a + 43
            a := a + 43
            a := a + 43
        }

        if(a[1]!= 125)
            revert (0xa32735);
    }
}
