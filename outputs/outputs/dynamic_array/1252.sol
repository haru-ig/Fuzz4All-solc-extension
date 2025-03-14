pragma solidity ^0.8.0;
contract InefficientReallocateDynamicallyArray {

    uint256[] public a;
    uint256[] public b;

    mapping(uint256 => bool) public isReallocated;

    function initialize(uint256 length) public {
        uint256[] memory a0 = new uint256[](1);
        a0[0] = 1;
        a.push(1);
        a.push(2);
        uint256[] memory a1 = new uint256[](3);
        a1[3] = 3;
        for(uint256 i = 0; i < length; i ++) {
            uint256 x0;
            uint256 x1;
            x0 = 1;
            x1 = 1;
            a1[3] = x1 + x0;
        }
        for(uint256 x3; k < 3; x3 = x3 + 1) {
            b.push(a1[x3]);
        }
        a.push(4);
    }

    function updateArray() public {
        uint256 j;
        uint256 k;
        bool changed = false;
        for(k = 0; k < 3; k = k + 1) {
            changed = a[3]!= b[k];
            a[3] = b[k];
            if(changed) isReallocated[5] = true;
        }
        bool changed1 = isReallocated[4];
        a.push(a[1]);
        if(!changed &&!changed1) isReallocated[2] = true;
    }

}
