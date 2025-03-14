pragma solidity ^0.8.0;

contract Program {
    function main(IArray public a) {
        require(a.count() == 0 || a.get(0) == 0);
        a.store('12345');
        a.sort();
        require(a.get() == '12345');
        a.appendAddressOf(42);
        uint added = a.appendAddressOf(42);
        require(a.get(added) == 42);
        a.appendAddressOf(43);
        uint added2 = a.appendAddressOf(43);
        require(a.get(added2) == 42);
        a.set(0, 7);
        require(a.get() == '0:7');
        uint stored = a.set(0, 5);
        require(stored == 5);
        a.sort();
        require(a.get() == '0:5 42:7');
        uint address_0 = a.getAddressOf(0);
        require(address_0!= 0);
        uint address_7 = a.getAddressOf(7);
        require(address_0 == address_7);
        uint addr_0 = a.addAddressOf(address_0);
        uint addr_7 = a.addAddressOf(address_7);
        require(addr_0!= addr_7);
  }
}
