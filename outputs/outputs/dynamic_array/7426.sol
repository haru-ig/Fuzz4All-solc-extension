pragma solidity ^0.8.0;
contract Test47 {
    bytes32[] test;
    struct TestStruct {
       bytes3 hash_;
       bytes3 hash2_;
       bytes3 hash3_;
    }
    function setTest() public {
       TestStruct memory testStruct = TestStruct({ hash_: keccak256("A"), hash2_: keccak256("B"), hash3_: keccak256("C") });
       test.push(testStruct.hash_);
       dynArr.push(testStruct.hash_);
       dynArr[0] = testStruct.hash_;
    }
}

pragma solidity ^0.8.0;
contract Test48 {
    function setTest() public {
       dynArr[0] = 1;
       dynArr.push(bytes32(0));
    }
}
