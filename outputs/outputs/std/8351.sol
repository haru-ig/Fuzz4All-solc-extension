pragma solidity ^0.8.0;
contract ArrayMutationsBis1 {
    uint256 array[6];
    uint array2[6];
    uint256 [] memory array3;
    mapping (address => uint) public balanceOf;
    function getBalance(address addressTo) public view returns (uint) {
        return balanceOf[addressTo];
    }
    function addElement() public {
        array2.push(1);
    }
}
