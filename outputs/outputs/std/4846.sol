pragma solidity ^0.8.0;
contract ModifiedSolidityExample {




pragma solidity ^0.8.0;
contract ModifiedSolidityExampleWithDifferentModifiers {
struct SampleStruct {
    uint amount;
}
function run(SampleStruct memory storage sample) internal pure returns (uint) {
    uint a = sample.amount + 7 - 3;
}
}
