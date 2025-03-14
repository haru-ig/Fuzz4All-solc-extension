pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
library MixInOut {

    struct Mixed {
        uint256 a;
        uint256 b;
        uint256 c;
        uint256 h;
    }


    function initData(Mixed memory self) internal returns(Mixed memory){
        self.a = 0;
        self.b = ~self.a;
        self.c = self.a + self.a;
        self.h = ~self.a;
        return self;
    }
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample75 {
    function testFunction() public view returns(uint256 a_, uint256 b_, uint256 c_){
        MixedInOut.Mixed memory self = MixedInOut.initData(MixedInOut.Mixed({}));
        a_ = self.a;
        b_ = ~self.a;
        c_ = self.a + self.a;
    }
}


pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample76 {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 h;
    uint256 j;
    constructor() public {
        a = -1;
        b = ~a;
        c = c * ~h;
        h = h + j;
    }
    function testFunction() public {
        b = ~a;
        a = 1;
        a = a - a;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample8 {
    uint256 a;
    uint256 b;
    uint256 c;

    uint256[2] memory a152;



    function initData(uint256[] memory b152) internal returns (uint256 a_, uint256 b_, uint256 c_, uint256 b152_) {
        b152_ = b152[0];
        a_ =
