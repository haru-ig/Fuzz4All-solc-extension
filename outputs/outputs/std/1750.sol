pragma solidity ^0.8.0;
contract Fancy {
    struct Node { uint value; Node next; }
    Node[] myList;
    function setFirst(uint value) public {

        myList.push(Node({ value: value,  next: null }));
        emit mutated(value, 0);
    }
    function setFirst2(uint value) public {
        myList.push(Node({ value: value,  next: Node(0) }));
        emit mutated(value, myList.length);
    }
    event mutated(uint value, uint length);
}

pragma solidity ^0.8.0;
contract Mutated {
    function mutateA(uint value) public {}
    function mutateB(uint value) public {}
    function returnC() public view returns(uint) {
        return 1;
    }
    event Mutated(uint a, uint b, uint startTime, uint endTime);
}
