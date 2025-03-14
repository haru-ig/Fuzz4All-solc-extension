pragma solidity ^0.8.0;
contract BWrapperInterface {
    function getData() public view returns (uint256){
        return 1 + 1;
    }
    function getData2() public view returns (uint160){
        return (64 * (10 ** 18)).mul(18);
    }
}
