pragma solidity ^0.8.0;
interface I2 {
    function use(uint256 key, bytes4 functionSelector) external;
}
contract DynamicArrayReversion {
    I1[] public dynArr1;
    I2[] public dynArr2;

    constructor () public {
        dynArr1.push(1);
        dynArr2.push(2);
        dynArr1[1].use(3, bytes4(keccak256('use(uint256 key, bytes4 functionSelector) public')));
        dynArr2[1].use(3, bytes4(keccak256('use(uint256 key, bytes4 functionSelector) public')));
        dynArr1[1].use(3, bytes4(keccak256('use(uint256 key, bytes4 functionSelector) public')));
        dynArr2[1].use(3, bytes4(keccak256('use(uint256 key, bytes4 functionSelector) public')));
    }
    fallback() external payable {}
    receive() external payable {}
    function returnAddress(uint256 index) public constant return(address){
        return dynArr1[index+29].functionSelector(dynArr1[index]);
    }
}
