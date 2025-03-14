pragma solidity ^0.8.0;


contract Bug {
    function test() public view returns (uint256) {
        BitwiseXORAndSHLXORAnd2 instance = new BitwiseXORAndSHLXORAnd2();
        instance.setX();
        instance.getX();
        instance.setY();
        instance.getY();
        instance.setZ();
        instance.getZ();
        instance.setW();
        instance.getW();
        instance.xor();
        instance.xor();
        instance.xor();
        return instance.xor();
    }
}
