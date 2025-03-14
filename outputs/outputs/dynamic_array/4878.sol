pragma solidity ^0.8.0;
contract Test7 {
    mapping (uint=>uint) memoryArray;
    function ArrayUint32() public {
        uint32[] memory array1 = new uint32[](4);
        array1[0]=3;
        array1[1]=15;
        array1[2]=29;
        array1[3]=47;
        memoryArray[3]=memoryArray[3] + array1[0];
        memoryArray[2]=memoryArray[2] + array1[1];
        memoryArray[1]=memoryArray[1] + array1[2];
        memoryArray[0]=memoryArray[0] + array1[3];
        require(memoryArray[0]==47,"");
        require(memoryArray[1]==29,"");
        require(memoryArray[2]==15,"");
        require(memoryArray[3]==3,"");
    }
}

pragma solidity ^0.8.0;
contract Test7 {
    uint32[4][] assembly = new uint32[4][];
    function ArrayUint32() public {
        uint128 i;
        uint256 j;
        assembly {
            mstore(assembly,0)
            for (i := 0; i < 4; i := i + 1) {
                mstore(add(assembly,add(i,0x20)),0)
            }
            i := 0
            assembly {

                do {
                    let memoryArray_i := mload(add(assembly,mul(sub(i,0),0x20)))
                    let element1_i := mload(address(array1[i]))
                    mstore(array1_i,element1_i)
                } while gt(0,sub(i,0x1f))

                for {let j := 3} mload(add(assembly,add(i,0x22))) gt_zero {
