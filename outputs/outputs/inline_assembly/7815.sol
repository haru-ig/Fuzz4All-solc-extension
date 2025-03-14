pragma solidity ^0.8.0;

contract Test {
    uint8 v;

    function Test() {
        v = 128;
    }

    function getV() public view returns(uint8) {
        return v;
    }

    function setV(uint8 x) public {
        v = x;
    }
}

pragma solidity ^0.8.0;
contract Test{
    event SetV(uint8 x);

    uint8 v;

    function Test() {
        v = 128;
    }

   function callSetV(uint8 x) public {
       emit SetV(x);
   }

   function getV() public view returns(uint8) {
       return v;
   }

    function setV(uint8 x) public {
        v = x;
        emit SetV(x);
    }
}
```
A contract’s state can be changed:

```solidity
pragma solidity ^0.8.0;
contract L15 {
    uint v;
    constructor() {
        v = 128;
    }

    function multiply(uint x, uint y) public pure returns (uint) {
        return x * y;
    }

    function setV(uint x) public {
        v = x;
    }
}
pragma solidity ^0.8.0;
contract Test{

    Test testContract;
    uint256 testBalance;
    uint256 testTransferAmount;

    uint256 v;

    constructor() {
        testContract = new Test();
        testBalance = testContract.getBalance();
        testTransferAmount = 0;
        v = 0;
    }

    function getBalance() public view returns(uint256) {
        return testBalance;
    }

    function getTransferAmount() public view returns(uint256) {
        return testTransferAmount;
    }

    function multiply(uint256 x, uint256 y) public pure returns (uint256) {
        return x * y;
    }

    function setV(uint256 x) public {
        v = x;
        emit SetV(x);
    }

    function incTransferAmount(uint256 x) public {
        testTransferAmount = testTransferAmount + x;
    }

    function incBalance(uint256 x) public {
        testBalance = testBalance + x;
    }

    function decTransferAmount(uint256 x) public {
        testTransferAmount = testTransferAmount - x;
    }

    function decBalance(uint256 x) public {
        testBalance = testBalance - x;
    }
}
```

You can call an externally stored function

```
Test test = contract.testAddress();
