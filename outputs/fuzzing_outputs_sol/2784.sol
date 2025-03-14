pragma solidity ^0.8.0;
contract FallbackContract {
    fallback() external payable {
    }
}
contract Example1 {
    function contractHasFallback() public pure returns (FallbackContract) {
        return new FallbackContract();
    }
    function contractHasFallbackAddressPayable() public pure returns (address payable) {
        return payable(new FallbackContract());
    }
}
contract Example2 {
    function contractIsFallbackPayable(FallbackContract _fallbackContract) public pure returns (bool) {
        return payable(_fallbackContract).transfer(address(this).balance);
    }
}
