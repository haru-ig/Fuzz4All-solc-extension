pragma solidity ^0.8.0;
contract SimpleExample16 {
    mapping (uint256 => uint256) public mapData;
    uint256 num = uint(uint256(uint160(0x266d)));
    function doSomething(bytes memory _data) public {
        num = num;
        mapData[num] = num;
        require(mapData[num] == num);
    }
}
