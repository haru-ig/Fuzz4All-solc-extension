pragma solidity ^0.8.0;
contract modifierB3{
    function f() public view returns (uint256){
        if(uint256(0)>uint256(0))
            return 42;
        else
            return uint256(0);
    }
}

pragma solidity ^0.8.0;
contract modifierD5{
    function f() public view returns (uint256){
        bytes32 x;
        require((x==bytes32(bytes20(keccak256(abi.encodePacked(x))))), "Fail");
        if (uint256(0)>uint256(0))
            return 42;
        else
            return uint256(0);
    }
}
