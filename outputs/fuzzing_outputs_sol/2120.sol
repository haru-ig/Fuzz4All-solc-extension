pragma solidity ^0.8.0;
contract Mutater15 {
    address[] public a = new address[](4);
    address[] public a1 = new address[](2);
    contract Mutater13 {
        function getArray() public view returns (address[] memory) {
            return a;
        }
        function setArray(address[] storage _a) public {
            a = _a;
        }
        function add(address[] memory _a) public returns (address[] memory) {
            _a.push(_a);
            _a[1] = _a[1] * _a[2] / a[1];
            return a;
        }
    }
    Mutater13 storage mStorage;
    function setStorage(Mutater13 storage memory _storage) public {
        mStorage = _storage;
    }

    event GetArrayEvent(address[] memory _a);
    function getArray() public view returns (address[] memory) {
        emit GetArrayEvent(a);
        return a;
    }
    fallback function () external payable {
    }
}
