pragma solidity ^0.8.0;
contract CallerFallbackMultipleContracts {
    callToFallback(bytes memory _data, address payable _to) public {
        _to.call{value: msg.value}(_data);
    }
    fallback() external payable {}
}
contract CallerFallbackMultipleContracts2 {
    callToFallback(bytes memory _data, address payable _to) public {
        _to.call{value: msg.value}(_data);
    }
    fallback() external payable {}
}
contract CallerFallbackMultipleContracts3 {
    uint256 x;
    receive() external payable {
        x += 1;
    }
    callToFallback(bytes memory _data, address payable _to) public {
        _to.call{value: msg.value}(_data);
    }
    fallback() external payable {}
}
contract CallerFallbackMultipleContracts4 {
    uint256 x;
    receive() external payable {
        x += 1;
    }
    fallback() external payable {
        x += 5;
    }
}
