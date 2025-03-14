pragma solidity ^0.8.0;
contract Solidity10To11 {
    uint8 public a;
    uint8 public b;
    uint8 public maxA;
    uint8 public count;
    constructor() public {
        a = 4;
        b = 3;
        maxA = 2;
        count = 4;
    }
    fallback() external payable {
        a = a + 1;
        b = b + 2;
        maxA = maxA + 2;
        count += 1;
    }
}

pragma solidity ^0.8.0;
contract Solidity17To18 {
    uint8 public a;
    uint8 public b;
    uint8 public maxA;
    uint8 public t;
    uint256 maxInt = 2**255+1;
    uint256 a2[maxInt];
    uint256 t2 = 10;
    constructor() public {
        a = 4;
        b = 3;
        maxA = 2;
        s = 8;
    }
    fallback() external payable {
        a = a2[s];
        b = b + 2;
        maxA = maxA + 2;
        s = s + 4;
    }
}
