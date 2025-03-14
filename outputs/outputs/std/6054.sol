pragma solidity ^0.8.0;

contract NewArray {
    IArray public a;

    constructor(IArray _a) {
        a = _a;
    }

    function set(uint index, uint data) external returns (uint) {
        return a.set(index, data);
    }

    function append(uint data) external returns (uint) {
        return a.append(data);
    }

    function get() external view returns (uint) {
        return a.get();
    }

    function getAddressOf(uint index) external view returns (address) {
        return a.getAddressOf(index);
    }

    function appendAddressOf(uint data) external returns (uint) {
        return a.appendAddressOf(data);
    }

    function addAddressOf(address addr) external returns (uint) {
        return a.addAddressOf(addr);
    }

    function count() external view returns (uint) {
        return a.count();
    }

    function max() external view returns (uint) {
        return a.max();
    }

    function min() external view returns (uint) {
        return a.min();
    }

    function sum() external view returns (uint) {
        return a.sum();
    }

    function sort() external returns (uint) {
        return a.sort();
    }
}
