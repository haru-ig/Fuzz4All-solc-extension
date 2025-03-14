pragma solidity ^0.8.0;
contract Contract18{
    event Fulfilled(address indexed owner, uint256 indexed value);
    uint256 public num;
    receive() external payable {
        num += 1;
        emit Fulfilled(msg.sender, num);
    }
    function getNumber() public view returns(uint) {
        return num;
    }
}
contract Caller{
    event Fulfilled(address indexed owner, uint256 indexed value);

    function callFallback() public returns (uint) {
        address f = address(Contract18{});
        f.call{value: 1}("");
        return 1;
    }

    function callFallbackToAddress() public view returns(uint) {
        address f = address(Contract18{});
        bytes memory dummy = "\x00".hex";
        f.call{value: 1}(dummy);
        return 1;
    }

    function callFallbackWithoutReturnValue() public {
        address f = address(Contract18{});
        f.call{value: 1}("");
    }

    function callFallbackWithReturnValue() public view returns(uint) {
        address f = address(Contract18{});
        (bool, ) = f.call{value: 1}("");
        return 1;
    }

    function callFallbackWithReturnValueToAddress() public returns (uint) {
        address f = address(Contract18{});
        (bool, bytes memory) = f.call{value: 1}("");
        return 1;
    }

}
