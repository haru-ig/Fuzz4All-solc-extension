pragma solidity ^0.8.0;
struct Mutate21 {
  uint32 x;
}
contract Mutate22 {
    uint32 x;
}
contract Mutate23 {
    uint32 private x;
}
pragma solidity ^0.8.0;
contract Mutate24 {
    modifier noPublicModification() {
        x = x + 1;
        _;
    }
    uint256 public x;
    constructor() {
        x = 2;
    }
}
contract Mutate25 {

}
contract Mutate26 {

}
contract Mutate27 {
    address mut nonPublicAddress;
    uint32 private x;
    uint32 public x;
    constructor (address _x0) {
        x = _x0;
        nonPublicAddress = _x0;
    }
    modifier noNonPublicModification() {
        x = x + 1;
        _;
    }
    modifier nonPublicModification() {
        x = x + 2;
        _;
    }
    function callPublicMethod() public nonPublicModification returns(uint256) {
        return toUint256(x);
    }
}
contract Mutate28 {

}
contract Mutate29 {

}
contract Mutate30 {

}
contract Mutate31 {

}
