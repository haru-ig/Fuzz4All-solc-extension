pragma solidity ^0.8.0;
contract S8Mutated9 {
    uint8 a;
    constructor () {
        if (a!= 0) {
            a = 150;
        } else {
            a = 100;
        }
    }
    function change6() public {

    }
}

pragma solidity ^0.8.0;
contract ArrayMutatedTest {
    uint16[] b;
    constructor () {
    }
    function change9(uint256 x) public {
        b[0] += x;
    }
    function change() public {
        b.push(100);
        b.push(250);
        b[0] += b[1];
        b.length--;
        b[0] -=150;
    }
}

pragma solidity ^0.8.0;
contract ArrayMutatedTest2 {
    uint16[] a;
    uint16[] b;
    constructor () {
        b.length = 2;
        b[1] = 1;
    }
    function change10() public {
        uint256 temp;
        for (uint16 i = 0; b[i] < a[i]; i++) {
            temp = a[i];
            a[i] = b[i];
            b[i] = temp;
        }
    }
}
