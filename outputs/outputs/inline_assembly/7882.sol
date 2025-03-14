pragma solidity ^0.8.0;
contract L45 {
	struct E {
        mapping(uint => uint) data;
        function get(uint) public returns (uint) {
            return data[msg.sender];
        }
        function setData(uint, uint) public;
        function setInt(uint, uint) public;
    }
	E e;
	constructor() {
		e.data[0] = 10;
		e.set(0);
		e.setData(0, 0);
		e.setInt(0, 0);
		e.data[1] = 11;
		e.set(1);
		e.setData(1, 1);
		e.setInt(1, 1);
	}
}
