pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample88 {
    OptimizelyExample87 public contractA;
    OptimizelyExample87 public contractB;
    uint128 public numberX;
    uint256 public counterY;
    constructor(OptimizelyExample87 contractA, OptimizelyExample87 contractB, uint128 a, uint256 b) public {
        contractA = contractA;
        contractB = contractB;
        numberX = a;
        counterY = b;
    }
    function getCounter(int128 x) public view returns (int128) {
        return Counter + contractB.getCounter(x);
    }
    function setMyCounter(int128 newMyCounter) public {
        if (address(contractA).balance < newMyCounter + contractA.getCounter(numberX)) {
            contractA.setMyCounter(newMyCounter - contractA.getCounter(numberX));
        }
        else {
            contractA.setMyCounter(newMyCounter);


            require(block.number <= counterY);
        }
        contractB.isCalled = false;
        contractA.setMyCounter(newMyCounter + contractA.getCounter(numberX));
    }
    function increment() public {
        if (contractA.getCounter(counterY) == counterY && contractA.getCounter(address(this)).balance > 0) {
            contractB.setMyCounter(contractB.getCounter(counterY) + 1);
        }
        else {
            contractB.setMyCounter(contractB.getCounter(counterY) + 1);

        }
    }
}
