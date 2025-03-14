pragma solidity ^0.8.0;
contract Mutator {
    uint immutable number_ = 123;
    uint public stored_;
    constructor () {
        stored_ = 2_000_000_000;
    }
    function mutate() public {
        stored_ += 3;
    }
    function readStored() public view returns (uint) {
        return stored_;
    }
    function readNumber() public view returns (uint) {
        return number_;
    }
}

pragma solidity ^0.8.0;
contract Mutator {
    uint public immutable number_ = 123;
    uint public stored_;
    constructor () {
        stored_ += 2_000_000_000;
    }
    function mutate() public {
        stored_ += 2;
    }
    function readStored() public view returns (uint) {
        return stored_;
    }
    function readNumber() public view returns (uint) {
        return number_;
    }
}







contract Mutator is Mutator {
    constructor () {
    }
    function changeNumber() public {
        stored_ += 0;
    }
    function changeNumberWithOverflow() public {
        stored_ = 2_000_000_000;
    }
    function changeNumberWithOverflowTwo() public {
        stored_ = 1828_058_417;
    }
    function readStored() public view returns (uint) {
        return stored_;
    }
}
