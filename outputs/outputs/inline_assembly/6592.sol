pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
library MixedContactsExample85_New {
    function doSomething() internal pure returns(uint x, uint y, uint z) {
        x = 1;
        y = ~x;
        y = 27;
        z = 5;
    }
}


pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
library MixedContactsExample86_New {
    function doSomething() public {
        uint storedBalance;
        uint transferFromAmount;
        uint gasPrice;
        uint gasLimit;

        (storage.storedBalance, storage.transferFromAmount, storage.gasPrice, storage.gasLimit, ) = MixedContactsExample85_New.doSomething();
    }
}


pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample87_New {
    uint256 public a;
    uint256 public b;
    uint256 public c;
    uint256 public d;
    uint256 public e;
    function doSomething() public {
        a += 1;
        b += ~a;
        b += 10;
        b *= 2;
        c += a;
        d += b;
        e += c;
        e -= 17;
    }
}
