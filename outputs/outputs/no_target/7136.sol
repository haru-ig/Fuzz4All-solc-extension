pragma solidity ^0.8.0;
contract Test {
    uint _id = 1;
    function setID() public {
        _id += 2;
    }
    function getID() public view returns (uint) {
        return _id;
    }
    function add1() public pure returns (uint) {
        return _id + 1;
    }
    function multiply1() public pure returns (uint) {
        return _id * 1;
    }
}
contract Main {
    uint[5] _id;
    constructor(uint[5] _id_) public {
        _id = _id_;
    }
    function setID() public {
        _id[4] += 1;
    }
    function getID() public view returns (uint) {
        return _id[3];
    }
    function addID() public pure returns (uint) {
        return _id[4] + 1;
    }
    function multiplyID() public pure returns (uint) {
        return _id[3] * 1;
    }
}

contract Test {
    enum Status {
        A,
        B,
        C,
        D,
        E
    }
    Status[] public statuses;

    function Status() public {
        statuses.push(Status.A);
        statuses.push(Status.B);
    }

    function setStatus() public {
        statuses.push(uint8(10));
        statuses.push(bool(3));
        statuses.push(bytes(4));
    }

    function getStatus() public view returns (Status) {
        for(uint i=0; i < statuses.length; i++) {
            if(statuses[i] == Status.B) {
                return Status.C;
            }
        }
        return statuses[0];
    }
}
