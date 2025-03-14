pragma solidity ^0.8.0;
contract XulContainer {
    uint private _xulCount;
    address private _container;
    address private _semanticContainer;
    constructor () public {
        SemanticallyDifferentXulContract semanticallyDifferentXulContract = new SemanticallyDifferentXulContract();
        address[] memory addresses = new address[](4);
        addresses[0] = address(semanticallyDifferentXulContract);
        addresses[1] = semanticallyDifferentXulContract;
        addresses[2] = _container;
        addresses[3] = _semanticContainer;
    }
    function xulCount() public view returns (uint) {
        return _xulCount;
    }
    function addToXulCount() public {
        _xulCount += 1;
    }
}
