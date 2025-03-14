pragma solidity ^0.8.0;
contract GetMutater {
    uint256 public constant initialValue = 10;
    uint256 public constant maxMutatedValue = 100;
    function f() public view returns(uint256){
        Mutator m;
        return m.multiply(initialValue, 100);
    }
}
