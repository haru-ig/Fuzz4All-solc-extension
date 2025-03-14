pragma solidity ^0.8.0;
contract DD {
    uint[] names;
    uint[] public counts;
    uint public count = 0;
    constructor() {
    }
    function push() public {
      count++;
      names.push(count);
      counts.push(names.length);
    }
}
contract D2 is D, DD {
    function pop() public view returns (uint id) {
      return counts[count-1];
    }
    function pop_2() public returns (uint id) {
      uint _id = names.popLast();
      uint _id_2 = names.popLast();
      names.push(address(this).balance);
      return (_id, _id_2);
    }
    function pop_3() public returns (uint id) {
      uint _id = names.popLast();
      uint _id_2 = names.popLast();
      names.push(address(this).balance);
      return (_id_2 + i);
    }
    function pop_4() public returns (uint id) {
      uint _id = names.popLast();
      uint _id_2 = names.popLast();
      names.push(address(this).balance);
      return (_id, _id_2 + i);
    }

}
