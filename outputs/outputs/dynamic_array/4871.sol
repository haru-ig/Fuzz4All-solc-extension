pragma solidity ^0.8.0;
contract Test6 {
    uint32[] memory array;
    function ArrayUint32() public {
        array.push(3);
        array.push(15);
        array.push(29);
        array.push(47);
        require(array[3]==47,"");
        require(array[2]==29,"");
        require(array[1]==15,"");
        require(array[0]==3,"");
    }
}

contract Test6 {
    uint32[4] memory array;
    function ArrayUint32() public {
        array[0]=3+array[0];
        array[1]=15+array[1];
        array[2]=29+array[2];
        array[3]=47+array[3];
        require(array[3]==47,"");
        require(array[2]==29,"");
        require(array[1]==15,"");
        require(array[0]==3,"");
    }
}
