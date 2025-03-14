pragma solidity ^0.8.0;
contract MultiprecisionFactory {

    uint data;
    uint data2;

    int array_A;

    uint8 unsignedInteger;

    int signedInteger;

    int array_B;

    function getMultiprecisionConstantValue() public pure returns(uint);
}

pragma solidity ^0.8.0;
contract MultiprecisionHelper {
    uint x;
    uint y;

    uint result;

    function getMultiprecisionResult() public view returns(uint);
}

pragma solidity ^0.8.0;
contract MemoryCall {

    function getTokenAddressOf(address) public view;
}
