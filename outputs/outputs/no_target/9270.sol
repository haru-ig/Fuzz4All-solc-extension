pragma solidity ^0.8.0;
contract semanticallyEquiv3{
}
contract semanticallyEquiv4{
}
pragma solidity ^0.8.0;

contract semanticallyEquiv5{
    mapping(address=>uint64) public balances;

    uint16 public constant maxAmount = 10000000000000000000;
    uint80 internal constant maxUint80 = uint80(maxAmount);

    modifier onlyPositive(uint64 amountToLock){
        require(amountToLock >= 0,"Negative Amount is not allowed.");
        _;
    }
}
