pragma solidity ^0.8.0;
contract SafelyCaller {
    receive (uint _amount) external payable {}
    fallback() external payable {}
}


pragma solidity ^0.8.0;
contract SafelyCaller {
    receive (uint) external payable {}
    fallback() external payable {}
}
