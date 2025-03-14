pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutations3 {
    struct Record {
        uint value;
    }
    function f(address arg0) public {

        Record memory theRecord;
        theRecord.value = uint(arg0);
        uint theValue = theRecord.value;
        theValue += theRecord.value;
        theValue -= theValue;
        theValue *= 2;
        theValue /= 2;
        theValue += theValue;
        theValue /= 2;
    }
}
