pragma solidity ^0.8.0;
contract QB is QB {
    uint public mAB;
    uint public mAB2;
    constructor () public {
        mAB = rAB;
        mAB2 = rAB2;
        for (uint x = 0; x < 1000; x++) {
            rAB = rAB2;
            rAB2 = mAB;
            mAB = mAB + mAB2 - mAB2 - mAB2 - mAB2;
        }
        for (uint x = 0; x < 1000; x++) {
            rAB = rAB2;
            rAB2 = mAB2 + mAB2;
            mAB2 = mAB2 - mAB2 + mAB2;
            mAB = mAB + mAB2 - mAB2;
        }
        for (uint x = 0; x < 1000; x++) {
            rAB = mAB2 - mAB2 + mAB2;
            mAB2 = mAB2 + mAB2 + mAB2;
            mAB = mAB + mAB2 - mAB2;
        }
    }
}
