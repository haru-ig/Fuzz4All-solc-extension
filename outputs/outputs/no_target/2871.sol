pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutatedStorage {
    enum MyEnum {
        Zero = 0,
        One,
        Two,
        Three,
        Four,
        Five,
    }

    function f(MyEnum myEnum) public pure {
        assert(myEnum >= MyEnum.Zero);
    }
}
