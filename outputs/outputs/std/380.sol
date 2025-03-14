pragma solidity ^0.8.0;
contract Mutate3 {
    uint32 b;
    function mutateArray(uint32[] memory b) public pure {
        b[1]++;
    }
}

pragma solidity ^0.8.0;
contract Mutate4 {
    address[2] b;
    function mutateArray(uint32[] memory b) public pure {
        b[1]++;
        b[0] = address(new uint32[](8));
    }
}

pragma solidity ^0.8.0;
interface MutableDataInterface {
    function getMemory(uint32[] memory b) => uint32;
}
contract Mutate5 {
    address[] b;
    MutableDataInterface mData;
    function mutateArray(uint32[] memory b) public {
        mData.getMemory(b);
        b[1]++;
        b[1] = address(new uint32[](8));
    }
}
