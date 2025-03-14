pragma solidity ^0.8.0;
contract C {

    uint[] public counter;


    constructor(uint[] memory v) public {

      counter = v;
    }



    modifier only53() {
        require(counter.length == 53, "Must be 53");
        _;
    }


    func() public {

      counter.push(5);

      counter.push(5);
    }
}
